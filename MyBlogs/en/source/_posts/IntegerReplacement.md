---
title: Integer Replacement
date: 2017-01-22 23:04:22
tags:
    - Math
    - Bitmap
---

> Given a positive integer n and you can do operations as follow:
>
> + If n is even, replace n with n/2.
> + If n is odd, you can replace n with either n + 1 or n - 1.
>
> What is the minimum number of replacements needed for n to become 1?
>
> Example 1:
> + Input: 8
> + Output: 3
> + Explanation: 8 -> 4 -> 2 -> 1
>
> Example 2:
> + Input: 7
> + Output: 4
> + Explanation: 7 -> 8 -> 4 -> 2 -> 1 or 7 -> 6 -> 3 -> 2 -> 1

<!-- more-->

This is Leetcode 397, and we can quickly find a solution in recuisive way:

```
class Solution {
    public:
        int integerReplacement(int num) {
            return _doIt(num);
        }

        int _doIt(int num) {
            if (num == 1) {
                return 0;
            } else if ((num & 1) == 0) { // even
                return 1 + _doIt(num >> 1);
            } else {
                return 1 + min(_doIt(num + 1), _doIt(num - 1));
            }
        }
};
```

Without any doubt, we get a RTE.

Because, a little problem cause, when the given num is INT_MAX, the (num + 1) will get error.

So, a easy way to solve or take over the problem is using the data type long:

```
class Solution {
    public:
        int integerReplacement(int num) {
            return _doIt((long)num);
        }

        int _doIt(long num) {
            if (num == 1) {
                return 0;
            } else if ((num & 1) == 0) { // even
                return 1 + _doIt(num >> 1);
            } else {
                return 1 + min(_doIt(num + 1), _doIt(num - 1));
            }
        }
};
```

Not a nice solution, but it gets AC.
