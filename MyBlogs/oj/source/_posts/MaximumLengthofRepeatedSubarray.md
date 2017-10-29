---
title: Maximum Length of Repeated Subarray
date: 2017-10-29 21:22:47
tags:
    - Array
---

> Given two integer arrays A and B, return the maximum length of an subarray that appears in both arrays.
>
> **Example 1:**
```
Input:
    A: [1,2,3,2,1]
    B: [3,2,1,4,7]
Output: 3

Explanation:
    The repeated subarray with maximum length is [3, 2, 1].
```
> Note:
> + 1 <= len(A), len(B) <= 1000
> + 0 <= A[i], B[i] < 100

<!--more-->

This is one of the Leetcode weekly contest. It is easy because of the rangement of the data.

So, you can use a easy way to pass the test cases.

But, here I used some skills to improve the performance.

Here is the code:

```
using namespace std;

class Solution
{
public:
    int findLength(vector<int>& A, vector<int>& B)
    {
        map<int, vector<int>> BMAP;

        for (int i = 0; i < (int)B.size(); i++) {
            if (BMAP.find(B[i]) != BMAP.end()) {
                BMAP[B[i]].push_back(i);
            } else {
                vector<int> idxs;
                idxs.push_back(i);
                BMAP[B[i]] = idxs;
            }
        }

        int res = 0;
        for (int idx = 0; idx < (int)A.size(); idx++) {
            if (BMAP.find(A[idx]) != BMAP.end()) {
                for (int i = 0; i < (int)BMAP[A[idx]].size(); i++) {
                    int idy = BMAP[A[idx]][i];
                    if ((int)B.size() - idy < res) {
                        continue;
                    }
                    if (B[idy] == A[idx]) {
                        int len = 1;
                        while (idx + len < (int)A.size()
                                && idy + len < (int)B.size()
                                && B[idy + len] == A[idx + len]) {
                            len++;
                        }
                        res = max(len, res);
                    }
                }
            }
            if ((int)A.size() - idx < res) {
                break;
            }
        }
        return res;
    }
};
```

It gets AC.
