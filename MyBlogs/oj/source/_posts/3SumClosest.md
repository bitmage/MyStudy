---
title: 3 Sum Closest
date: 2017-11-04 20:12:25
tags:
    - Array
    - Two Pointers
---


> Given an array S of n integers, find three integers in S such that the sum is closest to a given number, target. Return the sum of the three integers. You may assume that each input would have exactly one solution.
>
> + For example, given array S = {-1 2 1 -4}, and target = 1.
> + The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).

<!--more-->

Easy one:

```
using namespace std;

class Solution
{
public:
    int threeSumClosest(vector<int>& nums, int target)
    {
        if (nums.size() < 3) {
            return 0;
        }

        sort(nums.begin(), nums.end());

        int delta = INT_MAX, res;
        for (int i = 0; i < (int)nums.size() - 2; i++) {
            int l = i + 1, r = nums.size() - 1;
            while (l < r) {
                int s = nums[i] + nums[l] + nums[r];
                int d = target - s;
                if (delta > abs(d)) {
                    delta = abs(d);
                    res = s;
                }
                if (d > 0) {
                    l++;
                } else if (d < 0) {
                    r--;
                } else {
                    break;
                }
            }
        }
        return res;
    }
};
```

It gets AC. Done.
