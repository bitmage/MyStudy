---
title: 4Sum II
date: 2017-02-23 09:11:17
tags:
    - Binary Search
    - Hash Table
---


> Given four lists A, B, C, D of integer values, compute how many tuples (i, j, k, l) there are such that A[i] + B[j] + C[k] + D[l] is zero.
>
> To make problem a bit easier, all A, B, C, D have same length of N where 0 ≤ N ≤ 500. All integers are in the range of -228 to 228 - 1 and the result is guaranteed to be at most 231 - 1.
>
> Example:
>
> Input:
> ```
 A = [ 1, 2]
 B = [-2,-1]
 C = [-1, 2]
 D = [ 0, 2]
```
> Output:
> 2
>
> Explanation:
>
> The two tuples are:
> 1. (0, 0, 0, 1) -> A[0] + B[0] + C[0] + D[1] = 1 + (-2) + (-1) + 2 = 0
> 2. (1, 1, 0, 0) -> A[1] + B[1] + C[0] + D[0] = 2 + (-1) + (-1) + 0 = 0

<!--more-->

It is Leetcode No.454, and I quickly find a simple solution. Because if we use the traditional backtracing solution , the time complex will be O(n^4).

So I just divide the four array into two part. And I use a map to store the result as <sum, times>.

So the time complex will be O(2*n^2) and then I can use O(n) to find the total nums.

```
class Solution {
    public:
        int fourSumCount(vector<int>& A, vector<int>& B, vector<int>& C, vector<int>& D) {
            map<int, int> sums1, sums2;
            for (int i = 0; i < (int)A.size(); i++) {
                for (int j = 0; j < (int)B.size(); j++) {
                    if (sums1.find(A[i] + B[j]) != sums1.end()) {
                        sums1.find(A[i] + B[j])->second++;
                    } else {
                        sums1.insert(pair<int, int>(A[i] + B[j], 1));
                    }
                }
            }
            for (int i = 0; i < (int)C.size(); i++) {
                for (int j = 0; j < (int)D.size(); j++) {
                    if (sums2.find(C[i] + D[j]) != sums2.end()) {
                        sums2.find(C[i] + D[j])->second++;
                    } else {
                        sums2.insert(pair<int, int>(C[i] + D[j], 1));
                    }
                }
            }

            int res = 0;
            for (auto i : sums1) {
                if (sums2.find(0 - i.first) != sums2.end()) {
                    res = res + i.second * sums2.find(0 - i.first)->second;
                }
            }

            return res;
        }
};
```

It is not the best solution but I think it is a easy-understand solution. Also, it gets AC.
