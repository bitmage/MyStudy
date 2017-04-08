---
title: Number Complement
date: 2017-01-24 23:33:22
tags:
    - Bitmap
---

> Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.
>
> Note:
>
>   + The given integer is guaranteed to fit within the range of a 32-bit signed integer.
>   + You could assume no leading zero bit in the integer’s binary representation.
>
> Example 1:
> + Input: 5 Output: 2
> + Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
>
> Example 2:
> + Input: 1 Output: 0
> + Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.

<!--more-->

This is Leetcode 476. Easy problem. But here are many solutions.

You can divide the num by 2 and find the 1 bit and sum on the other hand.

It may cost O(logN) time complex.

But here I use another way:

```
class Solution {
    public:
        int findComplement(int num) {
            int level = 0;
            while (pow(2, level) <= num) {
                level++;
            }
            return (int)(pow(2, level) - 1) ^ num;
        }
};
```

You can find that 0x101 ^ 0x111 = 0x010

So, That's what I use. And it gets AC.
