---
title: Power of Four
date: 2017-03-23 20:39:55
tags:
    - Bit Manipulation
---

> Given an integer (signed 32 bits), write a function to check whether it is a power of 4.
>
> Example:
>
> Given num = 16, return true. Given num = 5, return false.
>
> Follow up: Could you solve it without loops/recursion?

<!--more-->

This is Leetcode No.342. Due to the surprise the USTC prepared for me. I have no attention to focus on my promise to solve one problem a day. 

So, today I just finish one Easy problem. Here is my solution for the problem.

```
using namaspace std;

class Solution {
    public:
        boolean isPowerOfFour(int num) {
            return (num > 0) && ((num & (num - 1)) == 0) && ((num & 0x55555555) == num);
        }
};
```

It gets AC.
