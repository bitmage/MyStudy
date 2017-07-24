---
title: Maximum Average Subarray II
date: 2017-07-20 14:32:43
tags:
    - Binary Search
    - Array
---

> Given an array consisting of n integers, find the contiguous subarray whose length is greater than or equal to k that has the maximum average value. And you need to output the maximum average value.
>
> **Example 1:**
```
Input: [1,12,-5,-6,50,3], k = 4
Output: 12.75
Explanation:
    when length is 5, maximum average value is 10.8,
    when length is 6, maximum average value is 9.16667.
    Thus return 12.75.
```
> **Note:**
> + 1 <= k <= n <= 10,000.
> + Elements of the given array will be in range [-10,000, 10,000].
> + The answer with the calculation error less than 10-5 will be accepted.

<!--more-->

This is leetcode No.644. It is a much more diffcult version of Maximum Average Subarray.

In this situation, we should find another soution instead of the bruce force method.

Try to think another way, for example let's check the value is possible for the array? With the Binary Search, we can make the solution's time complexity down to O(logN).

```
using namespace std;

class Solution {
    public:
        bool isPossible(vector<int>& nums, int k, double mid) {
            double sum = 0, prev = 0, min_sum = 0;
            for (int i = 0; i < k; i++)
                sum += nums[i] - mid;
            if (sum >= 0)
                return true;
            for (int i = k; i < (int)nums.size(); i++) {
                sum += nums[i] - mid;
                prev += nums[i - k] - mid;
                min_sum = min(prev, min_sum);
                if (sum >= min_sum)
                    return true;
            }
            return false;
        }

        double findMaxAverage(vector<int>& nums, int k) {
            double maxValue = INT_MIN, minValue = INT_MAX;
            for (int i = 0; i < (int)nums.size(); i++) {
                maxValue = max((double)nums[i], maxValue);
                minValue = min((double)nums[i], minValue);
            }

            double MARK = 0.00001, MISS = INT_MAX, PRE_MID = INT_MAX;
            while (MISS > MARK) {
                double mid = (maxValue + minValue) / 2;
                if (isPossible(nums, k, mid)) {
                    minValue = mid;
                } else {
                    maxValue = mid;
                }
                MISS = abs(PRE_MID - mid);
                PRE_MID = mid;
            }
            return (maxValue + minValue) / 2;
        }
};
```

It gets AC.
