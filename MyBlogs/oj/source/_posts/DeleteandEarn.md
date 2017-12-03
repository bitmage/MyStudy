---
title: Delete and Earn
date: 2017-12-03 22:25:40
tags:
    - Dynamic Programming
    - Array
---

> Given an array nums of integers, you can perform operations on the array.
>
> In each operation, you pick any nums[i] and delete it to earn nums[i] points. After, you must delete every element equal to nums[i] - 1 or nums[i] + 1.
>
> You start with 0 points. Return the maximum number of points you can earn by applying such operations.
>
> **Example 1:**
```
Input: nums = [3, 4, 2]
Output: 6
Explanation:
    Delete 4 to earn 4 points, consequently 3 is also deleted.
    Then, delete 2 to earn 2 points. 6 total points are earned.
```
> **Example 2:**
```
Input: nums = [2, 2, 3, 3, 3, 4]
Output: 9
Explanation:
    Delete 3 to earn 3 points, deleting both 2's and the 4.
    Then, delete 3 again to earn 3 points, and 3 again to earn 3 points.
    9 total points are earned.
```
> **Note:**
> + The length of nums is at most 20000.
> + Each element nums[i] is an integer in the range [1, 10000].

<!--more-->

Yet, just another rob horse problem. You just need to find that the problem is the same problem of [Rob House](https://leetcode.com/problems/house-robber/description/).

```
using namespace std;

class Solution
{
public:
    int deleteAndEarn(vector<int>& nums)
    {
        if (nums.size() == 0) {
            return 0;
        }
        vector<int> NUM(10005, 0);
        int startIdx = INT_MAX, endIdx = INT_MIN;
        for (int i = 0; i < (int)nums.size(); i++) {
            NUM[nums[i]] = NUM[nums[i]] + nums[i];
            startIdx = min(startIdx, nums[i]);
            endIdx = max(endIdx, nums[i]);

        }

        vector<int> DP(10005, 0);
        DP[startIdx] = NUM[startIdx];
        DP[startIdx + 1] = NUM[startIdx + 1];

        for (int i = startIdx + 2; i <= endIdx; i++) {
            DP[i] = max(DP[i - 1], DP[i - 2] + NUM[i]);
        }

        return DP[endIdx];
    }
};
```

It gets AC. Done.
