---
title: Coin Change II
date: 2017-04-11 22:25:47
tags:
    - Backtracking
    - Dynamic Programming
---

> You are given coins of different denominations and a total amount of money. Write a function to compute the number of combinations that make up that amount. You may assume that you have infinite number of each kind of coin.
>
> Note: You can assume that
>
> + 0 <= amount <= 5000
> + 1 <= coin <= 5000
> + the number of coins is less than 500
> + the answer is guaranteed to fit into signed 32-bit integer
>
> Example 1:
>```
Input: amount = 5, coins = [1, 2, 5]
Output: 4
Explanation: there are four ways to make up the amount:
5=5
5=2+2+1
5=2+1+1+1
5=1+1+1+1+1
```
> Example 2:
>```
Input: amount = 3, coins = [2]
Output: 0
Explanation: the amount of 3 cannot be made up just with coins of 2.
```
> Example 3:
>```
Input: amount = 10, coins = [10]
Output: 1
```

<!--more-->

This is Leetcode No.518. At first, you can quickly find a Backtracking method like below:

```
class Solution {
    public:
        int res;
        int change(int amount, vector<int>& coins) {
            res = 0;
            _combine(0, amount, 0, coins);

            return res;
        }

        void _combine(int current, int target, int idx, vector<int> coins) {
            if (current == target) {
                res++;
                return;
            }
            if (current > target) {
                return;
            }

            for (int i = idx; i < (int)coins.size(); i++) {
                _combine(current + coins[i], target, i, coins);
            }
        }
};
```

But it gets TLE on case "500 [3,5,7,8,9,10,11]". So, we have to find a better way to solve the problem.

So, you can find a O(amount) solution with DP.

Then the code come into this:

```

using namespace std;

class Solution {
    public:
        int change(int amount, vector<int>& coins) {
            int DP[8000];
            sort(coins.begin(), coins.end());

            memset(DP, 0, sizeof(DP));
            DP[0] = 1;
            for (int idx = 0; idx < (int)coins.size(); idx++) {
                for (int currentCoin = 1; currentCoin <= amount; currentCoin++) {
                    if (currentCoin >= coins[idx]) {
                        DP[currentCoin] += DP[currentCoin - coins[idx]];
                    }
                }
                for (int i = 0; i <= amount; i++) {
                    cout << DP[i] << ',';
                }
                cout << endl;
            }

            return DP[amount];
        }
};
```

We use a DP array to store the states and use the states to mark the coins combination.

It gets AC.
