---
title: Combination Sum IV
date: 2017-01-11 09:36:11
tags:
    - Dynamic Programming
---

> Given an integer array with all positive numbers and no duplicates, find the number of possible combinations that add up to a positive integer target.
>
> Example:
>
> nums = [1, 2, 3] , target = 4
>
> The possible combination ways are:
> (1, 1, 1, 1), (1, 1, 2), (1, 2, 1), (1, 3), (2, 1, 1), (2, 2), (3, 1)
>
> Note that different sequences are counted as different combinations.
>
> Therefore the output is 7.
>
> Follow up:
> What if negative numbers are allowed in the given array?
> How does it change the problem?
> What limitation we need to add to the question to allow negative number.

<!--more-->

This is Leetcode 377, we can quickly find a DFS solution like these:

```
class Solution {
    public:
        int res;
        int combinationSum4(vector<int>& nums, int target) {
            sort(nums.begin(), nums.end());
            res = 0;
            DFS(nums, target, 0);
            return res;
        }

        void DFS(vector<int> &nums, int target, int currentSum) {
            for (int i = 0; i < (int)nums.size(); i++) {
                if (currentSum + nums[i] > target) {
                    return;
                } else if (currentSum + nums[i] == target) {
                    res++;
                } else {
                    DFS(nums, target, currentSum + nums[i]);
                }
            }
        }
};
```

It will solve this problem but it's too slow to get AC. So, we can think in another way.

Picture this, we based on the sum. Make a DP array to store the value of the sum kinds of nums which sumed as the key.

So, the solution is as following:

```
class Solution {
    public:
        int res;
        int combinationSum4(vector<int>& nums, int target) {
            vector<int> res(target + 1, 0);
            sort(nums.begin(), nums.end());
            for (int i = 1; i <= target; i++) {
                for (int num : nums) {
                    if (num > i) {
                        break;
                    } else if (num == i) {
                        res[num]++;
                    } else {
                        res[i] = res[i - num] + res[i];
                    }
                }
            }
            return res[target];
        }
};
```

And it gets AC.
