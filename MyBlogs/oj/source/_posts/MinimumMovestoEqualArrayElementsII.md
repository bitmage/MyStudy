---
title: Minimum Moves to Equal Array Elements II
date: 2017-01-26 22:41:39
tags:
    - Math
---

> Given a non-empty integer array, find the minimum number of moves required to make all array elements equal, where a move is incrementing a selected element by 1 or decrementing a selected element by 1.
>
> You may assume the array's length is at most 10,000.
>
> Example:
> + Input: [1,2,3]
>
> + Output: 2
>
> + Explanation: Only two moves are needed (remember each move increments or decrements one element):
>  > [1,2,3]  =>  [2,2,3]  =>  [2,2,2]

<!--more-->

This is Leetcode 462, it is a fun problem. You can quick find a solution by using hashmap to store the number and its appearance times and calculate the result one by one.

But, it's actually a Math problem, you can find the min result always is the mid one.

So, here comes a solution:

```
class Solution {
    public:
        int minMoves2(vector<int>& nums) {
            int res = 0;
            sort(nums.begin(), nums.end());
            int standard = nums[nums.size() / 2];
            for (int i = 0; i < (int)nums.size(); i++) {
                res = res + abs(nums[i] - standard);
            }
            return res;
        }
};
```

And it gets AC.
