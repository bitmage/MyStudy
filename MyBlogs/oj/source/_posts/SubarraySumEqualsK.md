---
title: Subarray Sum Equals K
date: 2017-04-30 10:40:33
tags:
    - Dynamic Programming
    - Array
---


> Given an array of integers and an integer k, you need to find the total number of continuous subarrays whose sum equals to k.
>
> Example 1:
>```
Input:nums = [1,1,1], k = 2
Output: 2
```
> Note:
>
> + The length of the array is in range [1, 20,000].
> + The range of numbers in the array is [-1000, 1000] and the range of the integer k is [-1e7, 1e7].

<!--more-->

This is Leetcode No.560 and also one of the leetcode-weekly-contest-30. It is a similar problem of some problem that calculate the sum of subarray.

We can use the DP array to store the SUM[idx] for 0 to idx. Then if you want to calculate the sum for idx to idy, you just need to calculate SUM[idy] - SUM[idx].

But you should remember one thing that, your first item in SUM array is 0 which has no meaning.

So the code comes:

```
using namespace std;

class Solution {
    public:
        int subarraySum(vector<int>& nums, int k) {


            vector<int> DP; int sum = 0;
            DP.push_back(sum);
            for (int idx = 0; idx < (int)nums.size(); idx++) {
                sum += nums[idx];
                DP.push_back(sum);
            }

            int res = 0;
            for (int idx = 0; idx < (int)DP.size(); idx++) {
                for (int idy = idx + 1; idy < (int)DP.size(); idy++) {
                    if (DP[idy] - DP[idx] == k) {
                        res++;
                    }
                }
            }
            return res;
        }
};
```

Clean and simple, the code gets AC.
