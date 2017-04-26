---
title: Search for a Range
date: 2017-04-26 22:30:17
tags:
    - Binary Search
    - Array
---

> Given an array of integers sorted in ascending order, find the starting and ending position of a given target value.
>
> Your algorithm's runtime complexity must be in the order of O(log n).
>
> If the target is not found in the array, return [-1, -1].
>
> For example,
>```
Given [5, 7, 7, 8, 8, 10] and target value 8,
return [3, 4].
```

<!--more-->

It is Leetcode No.34, it is a old problem and I think it is just testing your basic programming skills. So you have no algorithm skills.

The code is easy to write and easy to understand.

```
using namespace std;

class Solution {
    public:
        vector<int> searchRange(vector<int>& nums, int target) {
            vector<int> res;
            int startIdx = 0, endIdx = nums.size() - 1;
            while (startIdx <= endIdx) {
                int midIdx = endIdx - (endIdx - startIdx) / 2;
                if (nums[midIdx] == target) {
                    int START = midIdx;
                    while (START >=0 && nums[START] == target) {
                        START--;
                    }
                    res.push_back(START + 1);

                    int END = midIdx;
                    while (END < (int)nums.size() && nums[END] == target) {
                        END++;
                    }
                    res.push_back(END - 1);

                    return res;
                } else if (nums[midIdx] > target) {
                    endIdx = midIdx - 1;
                } else if (nums[midIdx] < target) {
                    startIdx = midIdx + 1;
                }
            }
            res.push_back(-1);
            res.push_back(-1);

            return res;
        }
};
```

It gets AC at the first time I wrote it on the paper.
