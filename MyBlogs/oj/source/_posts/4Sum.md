---
title: 4 Sum
date: 2017-11-03 14:00:58
tags:
    - Array
    - Hash Table
    - Two Pointers
---

> Given an array S of n integers, are there elements a, b, c, and d in S such that a + b + c + d = target? Find all unique quadruplets in the array which gives the sum of target.
>
> **Note: **
> + The solution set must not contain duplicate quadruplets.
>
> **For example:**
```
Given array S = [1, 0, -1, 0, -2, 2], and target = 0.
A solution set is:
[
  [-1,  0, 0, 1],
  [-2, -1, 1, 2],
  [-2,  0, 0, 2]
]
```

<!--more-->

As we ac the problem previously. We can use the 3Sum problem solution to this problem.

For example. We can select a number first, the problem becomes how to find a triple that equal to -(target - number).

So, the solution comes:

```
using namespace std;

class Solution
{
public:
    vector<vector<int>> res;
    void dfs(vector<int> &nums, int currentIdx, vector<int> &current, int target)
    {
        current.push_back(nums[currentIdx]);
        if (current.size() == 2) {
            int left = currentIdx + 1;
            int right = nums.size() - 1;
            int currentSum = current[0] + current[1];
            int need = target - currentSum;
            while (left < right) {
                if (need - (nums[left] + nums[right]) < 0) {
                    right--;
                } else if (need - (nums[left] + nums[right]) > 0) {
                    left++;
                } else if (need - (nums[left] + nums[right]) == 0){
                    vector<int> t;
                    t.push_back(current[0]);
                    t.push_back(current[1]);
                    t.push_back(nums[left]);
                    t.push_back(nums[right]);
                    res.push_back(t);

                    int _l = nums[left];
                    int _r = nums[right];
                    while (_l == nums[left]) {
                        left++;
                    }
                    while (_r == nums[right]) {
                        right--;
                    }
                }
            }
        } else {
            for (int i = currentIdx + 1; i < (int)nums.size();) {
                int flag = nums[i];
                dfs(nums, i, current, target);
                while (flag == nums[i]) {
                    i++;
                }
            }
        }
        current.pop_back();
    }

    vector<vector<int>> fourSum(vector<int>& nums, int target)
    {
        res.clear();
        sort(nums.begin(), nums.end());

        for (int i = 0; i <= (int)nums.size() - 4;) {
            int flag = nums[i];
            vector<int> current;
            dfs(nums, i, current, target);
            while (nums[i] == flag) {
                i++;
            }
        }
        return res;
    }
};
```

It gets AC. Done.

However the time complexity is O(n^2*n). You can use a hashmap to reduce the time complexity when we need to spend to find the two number pair.
