---
title: Perfect Squares
date: 2017-01-16 15:31:29
tags:
    - Dynamic Programming
    - Math
    - Breadth-first Search
---

>  Given a positive integer n, find the least number of perfect square numbers (for example, 1, 4, 9, 16, ...) which sum to n.
>
>  For example, given n = 12, return 3 because 12 = 4 + 4 + 4; given n = 13, return 2 because 13 = 4 + 9.

<!--more-->

It is Leetcode 279 and a quite easy DP problem.

I used to find a hard way, for example, 1 4 9 16 25 are square numbers, and I use it as a seed to find the second level numbers. Use 1 as a example,

I will find 2(1+1), 5(1+4), 10(1+9)... are level 2 square numbers, and so on. I will find level N. Once if find the target number, return the level number, and the problem is done.

However, this solution gets a TLE. And, I just find another way to solve:

```
class Solution {
    public:
        int numSquares(int n) {
            vector<long> DP(n + 1, INT_MAX);
            DP[0] = 0;
            for (int i = 0; i <= n; i++) {
                for (int idx = 0; idx <= (int)sqrt(i); idx++) {
                    DP[i] = min(1 + DP[i - idx*idx], DP[i]);
                }
            }
            return DP[n];
        }
};
```

Much easier than the former one. And it gets AC.
