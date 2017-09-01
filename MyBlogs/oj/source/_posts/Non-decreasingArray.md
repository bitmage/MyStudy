---
title: Non-decreasing Array
date: 2017-09-01 16:54:47
tags:
    - Array
---

> Given an array with n integers, your task is to check if it could become non-decreasing by modifying at most 1 element.
>
> We define an array is non-decreasing if array[i] <= array[i + 1] holds for every i (1 <= i < n).
>
> **Example 1:**
```
Input: [4,2,3]
Output: True
Explanation: You could modify the first 4 to 1 to get a non-decreasing array.
```
> **Example 2:**
```
Input: [4,2,1]
Output: False
Explanation: You can't get a non-decreasing array by modify at most one element.
```
> **Note:** The n belongs to [1, 10,000].

<!--more-->

It is an easy problem, I can't solve it when I am in the contest. What a shame.

```
using namespace std;

class Solution {
public:

    bool isOk(vector<int>& nums) {
        for (int i = 0; i < (int)nums.size() - 1; i++) {
            if (nums[i] > nums[i + 1]) {
                return false;
            }
        }
        return true;
    }

    bool checkPossibility(vector<int>& nums) {
        int idx = -1;
        for (int i = 0; i < (int)nums.size() - 1; i++) {
            if (nums[i] > nums[i + 1]) {
                idx = i;
                break;
            }
        }
        if (idx == -1) {
            return true;
        }

        int _idx = nums[idx];
        int _idx_1 = nums[idx + 1];
        nums[idx + 1] = max(_idx, _idx_1);
        bool res = isOk(nums);
        nums[idx + 1] = _idx_1;
        nums[idx] = min(_idx, _idx_1);
        res = res || isOk(nums);
        return res;
    }
};
```

It gets AC.
