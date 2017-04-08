---
title: Count Numbers with Unique Digits
date: 2017-03-24 09:25:48
tags:
    - Math
    - Backtracking
    - Dynamic Programming
---

> Given a non-negative integer n, count all numbers with unique digits, x, where 0 ≤ x < 10n.
>
> Example:
> Given n = 2, return 91. (The answer should be the total numbers in the range of 0 ≤ x < 100, excluding [11,22,33,44,55,66,77,88,99])
>
> Hint:
>
> + A direct way is to use the backtracking approach.
> + Backtracking should contains three states which are (the current number, number of steps to get that number and a bitmask which represent which number is marked as visited so far in the current number). Start with state (0,0,0) and count all valid number till we reach number of steps equals to 10n.
> + This problem can also be solved using a dynamic programming approach and some knowledge of combinatorics.
> + Let f(k) = count of numbers with unique digits with length equals k.
> + f(1) = 10, ..., f(k) = 9 * 9 * 8 * ... (9 - k + 2) [The first factor is 9 because a number cannot start with 0].

<!--more-->

This is Leetcode No.357. It is a common DP problem using backtracking.

My solution is following.

```
class solution {
    public:
        int permutation(int n, int r)
        {
            if(r == 0)
            {
                return 1;
            }else{
                return n * permutation(n - 1, r - 1);
            }
        }
        int countnumberswithuniquedigits(int n) {
            int sum = 1;
            if(n > 0)
            {
            int end = (n > 10)? 10 : n;
            for(int i = 0; i < end; i++)
            {
                sum += 9 * permutation(9, i);
            }
            }
            return sum;
        }
};
```

It gets AC.
