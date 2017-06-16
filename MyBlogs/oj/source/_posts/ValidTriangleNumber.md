---
title: Valid Triangle Number
date: 2017-06-16 18:08:22
tags:
    - Array
    - Sort
---


> Given an array consists of non-negative integers, your task is to count the number of triplets chosen from the array that can make triangles if we take them as side lengths of a triangle.
>
> **Example 1:**
```
Input: [2,2,3,4]
Output: 3
Explanation:
        Valid combinations are:
        2,3,4 (using the first 2)
        2,3,4 (using the second 2)
        2,2,3
```
> **Note:**
>
> + The length of the given array won't exceed 1000.
> + The integers in the given array are in the range of [0, 1000].

<!--more-->

This is Leetcode No.611. It is a medium one but I think it is a simple problem.

The most important thing is to remember to sort the array first before you start to find the triple numbers.

```
using namespace std;

class Solution {
    public:
        int triangleNumber(vector<int>& nums) {
            sort(nums.begin(), nums.end());
            int res = 0;
            for (int idx = 0; idx < (int)nums.size(); idx++) {
                for (int idy = idx + 1; idy < (int)nums.size(); idy++) {
                    for (int idz = idy + 1; idz < (int)nums.size(); idz++) {
                        if (nums[idx] + nums[idy] > nums[idz]
                                && nums[idx] + nums[idz] > nums[idy]
                                && nums[idy] + nums[idz] > nums[idx]) {
                            res++;
                        } else {
                            break;
                        }
                    }
                }
            }
            return res;
        }
};
```

It gets AC.
