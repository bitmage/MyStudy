---
title: Can Place Flowers
date: 2017-06-15 20:50:07
tags:
    - Array
---


> Suppose you have a long flowerbed in which some of the plots are planted and some are not. However, flowers cannot be planted in adjacent plots - they would compete for water and both would die.
>
> Given a flowerbed (represented as an array containing 0 and 1, where 0 means empty and 1 means not empty), and a number n, return if n new flowers can be planted in it without violating the no-adjacent-flowers rule.
>
> **Example 1:**
```
Input: flowerbed = [1,0,0,0,1], n = 1
Output: True
```
> **Example 2:**
```
Input: flowerbed = [1,0,0,0,1], n = 2
Output: False
```
> **Note:**
>
> + The input array won't violate no-adjacent-flowers rule.
> + The input array size is in the range of [1, 20000].
> + n is a non-negative integer which won't exceed the input array size.

 <!--more-->

This is Leetcode No.605, and it is a simple problem but its ac rate is too low (30%), so I decide to write a blog to record my solution.

Actually, it is a simple one, you should to care about all the corner cases unless you insert 10 and 01 to the begin or end index. Then you can write the cleaner code.

```
using namespace std;

class Solution {
    public:
        bool canPlaceFlowers(vector<int>& flowerbed, int n) {
            flowerbed.insert(flowerbed.begin(), 0);
            flowerbed.insert(flowerbed.begin(), 1);
            flowerbed.push_back(0);
            flowerbed.push_back(1);

            vector<int> DP;
            for (int idx = 0; idx < (int)flowerbed.size(); idx++) {
                if (flowerbed[idx] == 1) {
                    DP.push_back(idx);
                }
            }

            int res = 0;
            for (int idx = 0; idx < (int)DP.size() - 1; idx++) {
                res += (DP[idx + 1] - DP[idx] - 2)/2;
            }
            return res >= n;
        }
};
```

It gets AC.
