---
title: Integer Break
date: 2017-03-11 12:45:11
tags:
    - Math
    - Dynamic Programming
---

> Given a positive integer n, break it into the sum of at least two positive integers and maximize the product of those integers. Return the maximum product you can get.
>
> For example, given n = 2, return 1 (2 = 1 + 1); given n = 10, return 36 (10 = 3 + 3 + 4).
>
> Note: You may assume that n is not less than 2 and not larger than 58.
>
> Hint:
>
> + There is a simple O(n) solution to this problem.
> + You may check the breaking results of n ranging from 7 to 10 to discover the regularities.

<!--more-->

This is Leetcode No.343. At first I thought it is a simple DP problem. But I failed once.

I thought the DP array will be like this:

```
DP[num] = DP[num / 2] + DP[num - num / 2];
```

However, the number 9 is not following this rule. the max is 9 = 3 + 3 + 3 (27) instead of 9 = 4 + 5 (24).

So, the result becomes:

```
DP[num] = max(i - 3, DP[i - 3]);
```

The result becomes:

```
using namespace std;

class Solution {
    public:
        vector<int> DP;
        int integerBreak(int num) {
            if (DP.size() == 0) {
                DP.push_back(0);
                DP.push_back(1);
                DP.push_back(1); // [0, 0, 1]
            }
            for (int i = DP.size(); i <= num; i++) {
                DP.push_back(3 * DP[i - 3]);
            }
            return DP[num];
        }
};
```

It gets AC.
