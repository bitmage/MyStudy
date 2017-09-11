---
title: Number of Longest Increasing Subsequence
date: 2017-09-11 19:42:46
tags:
    - Dynamic Programming
    - Array
---

> Given an unsorted array of integers, find the number of longest increasing subsequence.
>
> **Example 1:**
```
Input: [1,3,5,4,7]
Output: 2
Explanation: The two longest increasing subsequence are [1, 3, 4, 7] and [1, 3, 5, 7].
```
> **Example 2:**
```
Input: [2,2,2,2,2]
Output: 5
Explanation: The length of longest continuous increasing subsequence is 1, and there are 5 subsequences' length is 1, so output 5.
```
> **Note:**
>   + Length of the given array will be not exceed 2000 and the answer is guaranteed to be fit in 32-bit signed int.

<!--more-->

It is a simple problem, you should use a DP array to store two thing, the number if nums[idx] is the largest number, adn how many the kinds can use the number as the last one.

So, the code is:

```
using namespace std;

class Solution {
public:
    int findNumberOfLIS(vector<int>& nums) {
        vector<pair<int, int>> DP(nums.size(), pair<int, int>(1, 1));
        for (int idx = 0; idx < (int)nums.size(); idx++) {
            for (int idy = 0; idy < idx; idy++) {
                if (nums[idy] < nums[idx]) {
                    if (DP[idy].first + 1 > DP[idx].first) {
                        DP[idx].first = DP[idy].first + 1;
                        DP[idx].second = DP[idy].second;
                    } else if (DP[idy].first + 1 == DP[idx].first){
                        DP[idx].second = DP[idx].second + DP[idy].second;
                    }
                }
            }
        }

        int maxNumSofar = 0, maxRexSofar = 0;
        for (int i = 0; i < (int)nums.size(); i++) {
            if (DP[i].first > maxNumSofar) {
                maxNumSofar = DP[i].first;
                maxRexSofar = DP[i].second;
            } else if (DP[i].first == maxNumSofar) {
                maxRexSofar = maxRexSofar + DP[i].second;
            }
        }
        return maxRexSofar;
    }
};
```

It gets AC.
