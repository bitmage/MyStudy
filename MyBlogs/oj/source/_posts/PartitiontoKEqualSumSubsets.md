---
title: Partition to K Equal Sum Subsets
date: 2017-10-15 10:49:37
tags:
    - Depth-first Search
    - Array
---

> Given an array of integers nums and a positive integer k, find whether it's possible to divide this array into k non-empty subsets whose sums are all equal.
> 
> **Example 1:**
```
Input: nums = [4, 3, 2, 3, 5, 2, 1], k = 4
Output: True
Explanation: It's possible to divide it into 4 subsets (5), (1, 4), (2,3), (2,3) with equal sums.
```
> **Note:**
> + 1 <= k <= len(nums) <= 16.
> + 0 < nums[i] < 10000.

<!--more-->

Easy one, you just need to use the dfs function you can solve this problem.

```
using namespace std;

class Solution {
public:

    bool RES = false;

    void dfs(map<int, int> &NUMS, int targetSum, int currentSum, int remainK, int preNum) {
        if (remainK == 0) {
            RES = true;
            return;
        }

        if (currentSum == targetSum) {
            dfs(NUMS, targetSum, 0, remainK - 1, INT_MIN);
        }

        if (currentSum > targetSum) {
            return;
        }

        for (auto num : NUMS) {
            if (num.first < preNum) {
                continue;
            }
            if (RES) {
                return;
            }
            if (num.second <= 0 || num.first + currentSum > targetSum) {
                continue;
            }

            NUMS[num.first]--;
            dfs(NUMS, targetSum, currentSum + num.first, remainK, num.first);
            NUMS[num.first]++;
        }
        return;
    }

    bool canPartitionKSubsets(vector<int>& nums, int k) {
        RES = false;
        int sum = 0;
        map<int, int> NUMS;
        for (int i = 0; i < (int)nums.size(); i++) {
            sum = nums[i] + sum;
            NUMS[nums[i]]++;
        }

        if (sum % k != 0) {
            return false;
        }

        int targetSum = sum / k;
        for (int i = 0; i < k; i++) {
            dfs(NUMS, targetSum, 0, k, INT_MIN);
        }
        return RES;
    }
};
```

It gets AC.
