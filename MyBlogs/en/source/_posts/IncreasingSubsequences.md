---
title: Increasing Subsequences
date: 2017-01-29 23:16:14
tags:
    - Depth-first Search
---


> Given an integer array, your task is to find all the different possible increasing subsequences of the given array, and the length of an increasing subsequence should be at least 2 .
>
> Example:
>
> + Input: [4, 6, 7, 7]
> + Output: [[4, 6], [4, 7], [4, 6, 7], [4, 6, 7, 7], [6, 7], [6, 7, 7], [7,7], [4,7,7]]
>
> Note:
>
> + The length of the given array will not exceed 15.
> + The range of integer in the given array is [-100,100].
> + The given array may contain duplicates, and two equal integers should also be considered as a special case of increasing sequence.

<!--more-->

This is Leetcode 491. It's a problem with much fun. You can find a solution by using a stack and a back trace.

Not a clear solution, but I try to make it easy to think and easy to understand.

I try to combine all the possible combination and check whether it is good to move further.

```
class Solution {
    public:
        set<vector<int> > res;
        vector<vector<int> > findSubsequences(vector<int> &nums) {
            vector<int> current;
            vector<vector<int> > ret;

            res.clear();

            for (int i = 0; i < (int)nums.size(); i++) {
                _doIt(nums, i, current);
            }

            for (vector<int> n : res) {
                ret.push_back(n);
            }
            return ret;
        }

        void _doIt(vector<int> nums, int idx, vector<int> current) {
            for (int i = idx; i < (int)nums.size(); i++) {
                if (current.size() > 0 && nums[i] >= current[current.size() - 1]) {
                    current.push_back(nums[i]);
                    if (current.size() > 1) {
                        res.insert(vector<int>(current));
                    }
                    _doIt(nums, i + 1, current);
                    current.pop_back();
                }
                if (current.size() == 0){
                    current.push_back(nums[i]);
                    _doIt(nums, i + 1, current);
                    current.pop_back();
                }
            }
        }
};
```

It gets AC.
