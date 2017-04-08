---
title: Base 7
date: 2017-02-11 13:33:27
tags:
    - Math
---

> Given an integer, return its base 7 string representation.
>
> Example 1:
>
> + Input: 100
> + Output: "202"
>
> Example 2:
>
> + Input: -7
> + Output: "-10"
>
> Note: The input will be in range of [-1e7, 1e7].

<!--more-->

Easy one. My solution is:

```
class Solution {
    public:
        string convertTo7(int num) {
            string res = "";
            if (num == 0) {
                res += '0';
            }

            int flag = 0;
            if (num < 0) {
                num = -num;
                flag = 1;
            }
            while (num != 0) {
                res = (char)('0' + (num % 7)) + res;
                num = num / 7;
            }

            if (flag) {
                res = '-' + res;
            }
            return res;
        }
};
```

It gets AC.
