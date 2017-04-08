---
title: Largest Divisible Subset
date: 2017-01-13 11:04:11
tags:
    - Math
    - Dynamic Programming
---

> Given a set of distinct positive integers, find the largest subset such that every pair (Si, Sj) of elements in this subset satisfies: Si % Sj = 0 or Sj % Si = 0.
>
> If there are multiple solutions, return any subset is fine.
>
> Example 1:
> nums: [1,2,3]
> Result: [1,2] (of course, [1,3] will also be ok)
>
> Example 2:
> nums: [1,2,4,8]
> Result: [1,2,4,8]

<!--more-->

This is Leetcode 368, and it's a usual DP problem.

We use a numMap to store the pairs for each number. For example: {4:[1,2], 8:[1,2,4]}.

Then we can find the solution:

```
class Solution {
    public:
        vector<int> largestDivisibleSubset(vector<int>& nums) {
            vector<int> v;
            if (nums.size() < 1) {
                return v;
            }
            sort(nums.begin(), nums.end());
            map<int, vector<int> > numMap;
            for (int i = 0; i < (int)nums.size(); i++) {
                vector<int> vtmp;
                vtmp.push_back(nums[i]);
                numMap.insert(pair<int, vector<int> >(nums[i], vtmp));
            }
            for (int i = 0; i < (int)nums.size(); i++) {
                for (int j = i + 1; j < (int)nums.size(); j++) {
                    if (nums[j] % nums[i] == 0) {
                        if (numMap.find(nums[j])->second.size() < numMap.find(nums[i])->second.size() + 1) {
                            vector<int> vtmp;
                            vtmp.assign(numMap.find(nums[i])->second.begin(), numMap.find(nums[i])->second.end());
                            vtmp.push_back(nums[j]);
                            numMap.find(nums[j])->second = vtmp;
                        }
                    }
                }
            }

            int idx = 0, max = 0;
            for (int i = 0; i < (int)nums.size(); i++) {
                if (max < (int)numMap.find(nums[i])->second.size()) {
                    idx = nums[i];
                    max = numMap.find(nums[i])->second.size();
                }
            }
            return  numMap.find(idx)->second;
        }
};
```

And it gets AC.
