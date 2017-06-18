---
title: Minimum Factorization
date: 2017-06-18 21:17:32
tags:
    - Math
    - Recursion
---

> Given a positive integer a, find the smallest positive integer b whose multiplication of each digit equals to a.
>
> If there is no answer or the answer is not fit in 32-bit signed integer, then return 0.
>
> **Example 1**
```
Input:
48

Output:
68
```
> **Example 2**
```
Input:
15

Output:
35
```

<!--more-->

It is one of the Leetcode Weekly Contest.

The solution is simple:

```
using namespace std;

class Solution {
    public:
        int smallestFactorization(int num) {
            if (num == 1) return num;
            vector<int> res;
            while (num > 1) {
                bool isOk = false;
                for (int i = 9; i > 1; i--) {
                    if (num % i == 0) {
                        res.push_back(i);
                        num = num / i;
                        isOk = true;
                        break;
                    }
                }
                if (!isOk) {
                    return 0;
                }
            }

            sort(res.begin(), res.end());
            long long ret = 0;
            for (auto i : res) {
                ret = ret * 10 + i;
                if (ret > INT_MAX) {
                    return 0;
                }
            }
            return ret > 0 ? ret : 0;
        }
};
```

Easy one, it gets AC.
