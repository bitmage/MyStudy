---
title: Beautiful Arrangement II
date: 2017-09-15 13:25:27
tags:
    - Math
    - Array
---


> Given two integers n and k, you need to construct a list which contains n different positive integers ranging from 1 to n and obeys the following requirement:
> Suppose this list is [a1, a2, a3, ... , an], then the list [|a1 - a2|, |a2 - a3|, |a3 - a4|, ... , |an-1 - an|] has exactly k distinct integers.
>
> If there are multiple answers, print any of them.
>
> **Example 1:**
```
Input: n = 3, k = 1
Output: [1, 2, 3]
Explanation: The [1, 2, 3] has three different positive integers ranging from 1 to 3, and the [1, 1] has exactly 1 distinct integer: 1.
```
> **Example 2:**
```
Input: n = 3, k = 2
Output: [1, 3, 2]
Explanation: The [1, 3, 2] has three different positive integers ranging from 1 to 3, and the [2, 1] has exactly 2 distinct integers: 1 and 2.
```
> **Note:**
>
> + The n and k are in the range 1 <= k < n <= 104.

<!--more-->

It is a pure math problem.

The solution is:

```
using namespace std;

class Solution {
public:
    vector<int> constructArray(int n, int k) {
        int beginNum = 1, endNum = n;
        vector<int> res;
        if (k%2 == 0) {
            // from rear to front
            for (int i = 0; i < k/2; i++) {
                res.push_back(beginNum);
                beginNum++;
                res.push_back(endNum);
                endNum--;
            }
            while (endNum >= beginNum) {
                res.push_back(endNum);
                endNum--;
            }
        } else {
            // from front to rear
            for (int i = 0; i < k/2; i++) {
                res.push_back(beginNum);
                beginNum++;
                res.push_back(endNum);
                endNum--;
            }
            while (beginNum <= endNum) {
                res.push_back(beginNum);
                beginNum++;
            }
        }
        return res;
    }
};
```

It is not a big deal and gets AC.
