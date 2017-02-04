---
title: Target Sum
date: 2017-01-28 22:49:36
tags:
    - Depth-first Search
    - Dynamic Programming
---


> You are given a list of non-negative integers, a1, a2, ..., an, and a target, S. Now you have 2 symbols + and -. For each integer, you should choose one from + and - as its new symbol.
>
> Find out how many ways to assign symbols to make sum of integers equal to target S.
>
> Example 1:
>
> Input: nums is [1, 1, 1, 1, 1], S is 3.
> Output: 5
>
> Explanation:
>
> + -1+1+1+1+1 = 3
> + +1-1+1+1+1 = 3
> + +1+1-1+1+1 = 3
> + +1+1+1-1+1 = 3
> + +1+1+1+1-1 = 3
>
> There are 5 ways to assign symbols to make the sum of nums be target 3.
>
> Note:
>
> + The length of the given array is positive and will not exceed 20.
> + The sum of elements in the given array will not exceed 1000.
> + Your output answer is guaranteed to be fitted in a 32-bit integer.

<!--more-->

This is Leetcode 494. And I tried a not best solution, just use the DFS:

```
class Solution {
    public:

        int res;

        int findTargetSumWays(vector<int>& nums, int target) {
            res = 0;
            _calc(nums, 0, target, 0);
            return res;
        }

        void _calc(vector<int>& nums, int idx, int target, int current) {
            if ((int)(nums.size()) == idx) {
                if (current == target) {
                    res++;
                }
            } else {
                _calc(nums, idx + 1, target, current + nums[idx]);
                _calc(nums, idx + 1, target, current - nums[idx]);
            }
        }
};
```

And, it passed ?!

So, I try to find a better way to solve the problem, and I find I can try with DP.

You can use the following Java code:

```
public class Solution {
    public int findTargetSumWays(int[] nums, int s) {
        int sum = 0;
        for(int i: nums) sum+=i;
        if(s>sum || s<-sum) return 0;
        int[] dp = new int[2*sum+1];
        dp[0+sum] = 1;
        for(int i = 0; i<nums.length; i++){
            int[] next = new int[2*sum+1];
            for(int k = 0; k<2*sum+1; k++){
                if(dp[k]!=0){
                    next[k + nums[i]] += dp[k];
                    next[k - nums[i]] += dp[k];
                }
            }
            dp = next;
        }
        return dp[sum+s];
    }
}
```

Explaination:
> ![](https://discuss.leetcode.com/uploads/files/1485048726667-screen-shot-2017-01-21-at-8.31.48-pm.jpg)
