---
title: Combination Sum
date: 2017-09-07 21:23:46
tags:
    - Array
    - Backtracking
---


> Given a set of candidate numbers (C) (without duplicates) and a target number (T), find all unique combinations in C where the candidate numbers sums to T.
>
> The same repeated number may be chosen from C unlimited number of times.
>
> **Note:**
>
> + All numbers (including target) will be positive integers.
> + The solution set must not contain duplicate combinations.
>
> For example, given candidate set [2, 3, 6, 7] and target 7,
> A solution set is:
```
[
  [7],
  [2, 2, 3]
]
```

<!--more-->

It is a simple problem. You just need to use the DFS method.

```
using namespace std;

class Solution {
public:

    vector<vector<int>> res;

    void DFS(vector<int> &current, int currentSum, vector<int> &nums, int target, int currentIdx) {
        if (currentSum > target) {
            return;
        }
        if (currentSum == target) {
            vector<int> _nums(current);
            res.push_back(_nums);
            return;
        }
        for (int i = currentIdx; i < (int)nums.size(); i++) {
            current.push_back(nums[i]);
            DFS(current, currentSum + nums[i], nums, target, i);
            current.pop_back();
        }
    }

    vector<vector<int>> combinationSum(vector<int>& candidates, int target) {
        res.clear();

        vector<int> current;
        DFS(current, 0, candidates, target, 0);
        return res;
    }
};
```

It gets AC.
