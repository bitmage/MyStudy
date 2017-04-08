---
title: Permutations
date: 2017-02-13 10:00:16
tags:
    - Backtracking
---

> Given a collection of distinct numbers, return all possible permutations.
>
> For example:
>
> [1,2,3] have the following permutations:
> ```
[
    [1,2,3],
    [1,3,2],
    [2,1,3],
    [2,3,1],
    [3,1,2],
    [3,2,1]
]
```

<!--more-->

It is leetcode No.46, and it is a simple backtracking problem.

You can just do such a tail reversation to solve the problem.

```
class Solution {
    public:
        set<int> visited;
        vector<vector<int> > res;
        vector<vector<int> > permute(vector<int>& nums) {
            vector<int> current;
            backTrace(current, nums);
            return res;
        }

        void backTrace(vector<int> current, vector<int> nums) {
            if (current.size() == nums.size()) {
                res.push_back(current);
            }
            for (int i = 0; i < (int)nums.size(); i++) {
                if (visited.find(nums[i]) == visited.end()) {
                    current.push_back(nums[i]);
                    visited.insert(nums[i]);
                    backTrace(current, nums);
                    visited.erase(nums[i]);
                    current.pop_back();
                }
            }
        }
};
```

And it gets AC.
