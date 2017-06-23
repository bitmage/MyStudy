---
title: Split Array Largest Sum
date: 2017-06-23 14:53:11
tags:
    - Dynamic Programming
    - Binary Search
---


> Given an array which consists of non-negative integers and an integer m, you can split the array into m non-empty continuous subarrays. Write an algorithm to minimize the largest sum among these m subarrays.
>
> **Note:**
> If n is the length of array, assume the following constraints are satisfied:
```
    1 ≤ n ≤ 1000
    1 ≤ m ≤ min(50, n)
```
> **Examples:**
```
Input:
nums = [7,2,5,10,8]
m = 2

Output:
18

Explanation:
There are four ways to split nums into two subarrays.
The best way is to split it into [7,2,5] and [10,8],
where the largest sum among the two subarrays is only 18.
```

<!--more-->

This is Leetcode No.410. The DP solution is as following:

DP[i][j] means from 0 to j in the array, the result in i groups is DP[i][j].

```
using namespace std;


class Solution {
    public:
        int splitArray(vector<int>& nums, int m) {
            int len = nums.size();
            vector<vector<long>> DP(m, vector<long>(len, 0));
            DP[0][0] = nums[0];
            for(int i = 1; i<len; i++) {
                DP[0][i] = DP[0][i - 1] + nums[i];
            }

            for(int k = 1; k<m; k++) {
                for(int i = 0; i<len; i++) {
                    long minVal = DP[0][i];
                    for(int j = i-1; j>= 0; j--) {
                        long tmpVal = max(DP[0][i] - DP[0][j], DP[k - 1][j]);
                        minVal = min(minVal, tmpVal);
                    }
                    DP[k][i] = minVal;
                }
            }
            return DP[m-1][len - 1];
        }
};
```

Luckly it gets AC.
