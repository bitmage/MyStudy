---
title: Majority Element
date: 2017-11-15 15:36:13
tags:
    - Array
---

> Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
> 
> You may assume that the array is non-empty and the majority element always exist in the array.

<!--more-->

Easy one, but if you use the bruce force solution. It will give a TLE.

```
using namespace std;

class Solution
{
public:
    int majorityElement(vector<int>& nums)
    {
        int times = 0;
        int current = nums[0];
        for (int i = 0; i < (int)nums.size(); i++) {
            if (current == nums[i]) {
                times++;
            } else {
                times--;
                if (times == 0) {
                    current = nums[i];
                    times++;
                }
            }
        }
        return current;
    }
};
```

It gets AC.
