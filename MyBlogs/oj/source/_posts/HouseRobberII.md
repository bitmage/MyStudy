---
title: House Robber II
date: 2017-04-19 23:16:39
tags:
    - Dynamic Programming
---

> After robbing those houses on that street, the thief has found himself a new place for his thievery so that he will not get too much attention. This time, all houses at this place are arranged in a circle. That means the first house is the neighbor of the last one. Meanwhile, the security system for these houses remain the same as for those in the previous street.
>
> Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.

<!--more-->

This is Leetcode No.213. And it is a extended problem of House Robber. It will be much fun.

So, you will do only one more time to check the max value that the theif can steal.

```c++
using namespace std;

class Solution {
    public:
        int rob(vector<int>& nums) {
            if (nums.size() == 0) {
                return 0;
            }
            if (nums.size() == 1) {
                return nums[0];
            }
            if (nums.size() == 2) {
                return max(nums[1], nums[0]);
            }
            return max(_rob(nums, 0, nums.size() - 2), _rob(nums, 1, nums.size() - 1));
        }

        int _rob(vector<int> &nums, int startIdx, int endIdx) {
            vector<int> DP(nums.size(), 0);
            DP[startIdx] = nums[startIdx], DP[startIdx + 1] = max(nums[startIdx + 1], nums[startIdx]);
            for (int i = startIdx + 2; i <= endIdx; i++) {
                DP[i] = max(nums[i] + DP[i - 2], DP[i - 1]);
            }
            return DP[endIdx];
        }
};
```

It gets AC.
