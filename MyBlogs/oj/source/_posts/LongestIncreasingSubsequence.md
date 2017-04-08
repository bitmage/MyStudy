---
title: Longest Increasing Subsequence
date: 2017-03-22 15:49:41
tags:
    - Binary Search
    - Dynamic Programming
---

> Given an unsorted array of integers, find the length of longest increasing subsequence.
>
> For example,
> Given [10, 9, 2, 5, 3, 7, 101, 18],
> The longest increasing subsequence is [2, 3, 7, 101], therefore the length is 4. Note that there may be more than one LIS combination, it is only necessary for you to return the length.
>
> Your algorithm should run in O(n2) complexity.
>
> Follow up: Could you improve it to O(n log n) time complexity?

<!--more-->

This is Leetcode No.300. It is a DP problem. So you can quickly find the O(n^3) solution.

By using for loop for three times. You can find the result. But if you use a DP array to store the result. You can improve the time complex to O(n^2).

Here is my solution:

```
using namespace std;

class Solution {
    public:
        int lengthOfLIS(vector<int> nums) {
            vector<int> DP;
            for (int i = 0; i < (int)nums.size(); i++) {
                DP.push_back(1);
            }
            for (int i = 1; i < (int)nums.size(); i++) {
                for (int j = 0; j < i; j++) {
                    if (nums[i] > nums[j]) {
                        DP[i] = max(DP[i], DP[j] + 1);
                    }
                }
            }
            int res = 0;
            for (int i = 0; i < (int)nums.size(); i++) {
                res = max(DP[i], res);

            }
            return res;
        }
};
```

But I can't find the O(nlogn) method until I find the solution in the Discuss channel.

```
int lengthOfLIS(vector<int>& nums) {
    vector<int> res;
    for(int i=0; i<nums.size(); i++) {
        auto it = std::lower_bound(res.begin(), res.end(), nums[i]);
        if(it==res.end()) res.push_back(nums[i]);
        else *it = nums[i];
    }
    return res.size();
}
```

It is a great method!
