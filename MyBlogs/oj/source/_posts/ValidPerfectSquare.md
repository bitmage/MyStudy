---
title: Valid Perfect Square
date: 2017-01-25 22:15:29
tags:
    - Binary Search
    - Math
---

> Given a positive integer num, write a function which returns True if num is a perfect square else False.
>
> Note: Do not use any built-in library function such as sqrt.
>
> Example 1:
> + Input: 16
> + Returns: True
>
> Example 2:
> + Input: 14
> + Returns: False

<!--more-->

It's Leetcode 367. Easy problem, but it's easy to get wrong when the mid * mid is larger than the INT_MAX.

```
class Solution {
    public:
        bool isPerfectSquare(int num) {
            long long start = 0, end = num; // use long long to avoid such a case
            while (start <= end) {
                long long mid = end - ((end - start) / 2);
                if (mid * mid == num) {
                    return true;
                } else if (mid * mid > num) {
                    end = mid - 1;
                } else {
                    start = mid + 1;
                }
            }
            return false;
        }
};
```

It gets AC.
