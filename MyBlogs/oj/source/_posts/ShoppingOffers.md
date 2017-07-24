---
title: Shopping Offers
date: 2017-07-21 13:14:24
tags:
    - Dynamic Programming
    - Depth-first Search
---


> In LeetCode Store, there are some kinds of items to sell. Each item has a price.
>
> However, there are some special offers, and a special offer consists of one or more different kinds of items with a sale price.
>
> You are given the each item's price, a set of special offers, and the number we need to buy for each item. The job is to output the lowest price you have to pay for exactly certain items as given, where you could make optimal use of the special offers.
>
> Each special offer is represented in the form of an array, the last number represents the price you need to pay for this special offer, other numbers represents how many specific items you could get if you buy this offer.
>
> You could use any of special offers as many times as you want.
>
> **Example 1:**
```
Input: [2,5], [[3,0,5],[1,2,10]], [3,2]
Output: 14
Explanation:
There are two kinds of items, A and B. Their prices are $2 and $5 respectively.
In special offer 1, you can pay $5 for 3A and 0B
In special offer 2, you can pay $10 for 1A and 2B.
You need to buy 3A and 2B, so you may pay $10 for 1A and 2B (special offer #2), and $4 for 2A.
```
> **Example 2:**
```
Input: [2,3,4], [[1,1,0,4],[2,2,1,9]], [1,2,1]
Output: 11
Explanation:
The price of A is $2, and $3 for B, $4 for C.
You may pay $4 for 1A and 1B, and $9 for 2A ,2B and 1C.
You need to buy 1A ,2B and 1C, so you may pay $4 for 1A and 1B (special offer #1), and $3 for 1B, $4 for 1C.
You cannot add more items, though only $9 for 2A ,2B and 1C.
```
> **Note:**
>
> + There are at most 6 kinds of items, 100 special offers.
> + For each item, you need to buy at most 6 of them.
> + You are not allowed to buy more items than you want, even if that would lower the overall price.

<!--more-->

This is Leetcode No.638. It is a classic 0-1 package problem.

For the first time I write the code like:

```
using namespace std;

struct Special {
    int save;
    int price;
    vector<int> goods;
};

class Solution {
    public:
        int RES = INT_MAX;

        int shoppingOffers(vector<int>& prices, vector<vector<int> >& specials, vector<int>& needs) {
            vector<Special> sellOffs(specials.size());
            for (int idx = 0; idx < (int)sellOffs.size(); idx++) {
                int price = 0;
                for (int idy = 0; idy < (int)prices.size(); idy++) {
                    sellOffs[idx].goods.push_back(specials[idx][idy]);
                    price = price + specials[idx][idy] * prices[idy];
                }
                sellOffs[idx].save = price - specials[idx][prices.size()];
                sellOffs[idx].price = specials[idx][prices.size()];
            }

            DFS(sellOffs, needs, prices, 0, 0);
            return RES;
        }

        void DFS(vector<Special> &sellOffs, vector<int> &remains, vector<int> &prices, int idx, int currentPrice) {
            if (currentPrice > RES) {
                return;
            }

            if (idx == (int)sellOffs.size()) {
                for (int i = 0; i < (int)remains.size(); i++) {
                    currentPrice = currentPrice + remains[i] * prices[i];
                }
                RES = min(RES, currentPrice);
                return;
            }
            if (isOk(remains, sellOffs[idx].goods)) {
                for (int i = 0; i < (int)remains.size(); i++) {
                    remains[i] = remains[i] - sellOffs[idx].goods[i];
                }
                DFS(sellOffs, remains, prices, idx, currentPrice + sellOffs[idx].price);
                for (int i = 0; i < (int)remains.size(); i++) {
                    remains[i] = remains[i] + sellOffs[idx].goods[i];
                }
            }
            DFS(sellOffs, remains, prices, idx + 1, currentPrice);
        }

        bool isOk(vector<int> &needs, vector<int> &special) {
            for (int i = 0; i < (int)needs.size(); i++) {
                if (needs[i] - special[i] < 0) {
                    return false;
                }
            }
            return true;
        }
};
```

It gets the too many memory. I find that it is useless to create one more class to store the value. Then I change the code into:

```
using namespace std;

class Solution {
    public:
        int RES = INT_MAX;

        int shoppingOffers(vector<int>& prices, vector<vector<int> >& specials, vector<int>& needs) {
            for (int idx = 0; idx < (int)specials.size(); idx++) {
                int price = 0;
                for (int idy = 0; idy < (int)prices.size(); idy++) {
                    price = price + specials[idx][idy] * prices[idy];
                }
                specials[idx].push_back(price - specials[idx][prices.size()]);
            }
            DFS(specials, needs, prices, 0, 0);
            return RES;
        }

        void DFS(vector<vector<int> > &sellOffs, vector<int> &remains, vector<int> &prices, int idx, int currentPrice) {
            if (currentPrice > RES) {
                return;
            }

            if (idx == (int)sellOffs.size()) {
                for (int i = 0; i < (int)remains.size(); i++) {
                    currentPrice = currentPrice + remains[i] * prices[i];
                }
                RES = min(RES, currentPrice);
                return;
            }
            if (isOk(remains, sellOffs[idx])) {
                for (int i = 0; i < (int)remains.size(); i++) {
                    remains[i] = remains[i] - sellOffs[idx][i];
                }
                DFS(sellOffs, remains, prices, idx, currentPrice + sellOffs[idx][remains.size()]);
                for (int i = 0; i < (int)remains.size(); i++) {
                    remains[i] = remains[i] + sellOffs[idx][i];
                }
            }
            DFS(sellOffs, remains, prices, idx + 1, currentPrice);
        }

        bool isOk(vector<int> &needs, vector<int> &special) {
            for (int i = 0; i < (int)needs.size(); i++) {
                if (needs[i] - special[i] < 0) {
                    return false;
                }
            }
            return true;
        }
};
```

It gets AC.
