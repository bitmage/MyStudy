---
title: Max Consecutive Ones II
date: 2017-01-15 14:18:18
tags:
    - Dynamic Programming
---

> Given a binary array, find the maximum number of consecutive 1s in this array if you can flip at most one 0.
>
> Example 1:
>
> Input: [1,0,1,1,0]
> Output: 4
> Explanation: Flip the first zero will get the the maximum number of consecutive 1s.
> > After flipping, the maximum number of consecutive 1s is 4.
>
> Note:
> + The input array will only contain 0 and 1.
> + The length of input array is a positive integer and will not exceed 10,000
>
> Follow up:
> What if the input numbers come in one by one as an infinite stream? In other words, you can't store all numbers coming from the stream as it's too large to hold in memory. Could you solve it efficiently?

<!--more-->

This is a problem from Leetcode week contest, AKA No.487. And I think it is a DP problem.

First, I find a bad idea, I try to combine the nums like:
```
1 0 1 1 0 1 => 1 0 2 0 1
```

And try to deal with the transformed array. But it is still a hard problem. So I think in the DP way. Because its number of situations is limited. So, I can use a two DP array to store the number currently.
```
nums: 1 0 1 1 0 1
DP 1: 1 2 3 4 0 1
DP 2: 1 0 1 2 3 4
```

Because only four situation will happen. 0 -> 1, 1 -> 1, 0 -> 0, 1 -> 0.

So the solution is following:

```
class Solution {
    public:
        int findMaxConsecutiveOnes(vector<int>& nums) {
            if (nums.size() == 0) {
                return 0;
            }
            int res = 0, flag = 0; // flag 0 represents up use the flip
            vector<int> flags1(nums.size() + 1), flags2(nums.size() + 1);
            flags1.push_back(0);
            flags2.push_back(0);

            for (int i = 0; i < (int)nums.size(); i++) {
                if (nums[i] == 0) {
                    if (flag == 0) {
                        flag = 1;
                        flags1[i+1] = flags1[i] + 1;
                        flags2[i+1] = 0;
                    } else {
                        flag = 0;
                        flags1[i+1] = 0;
                        flags2[i+1] = flags2[i] + 1;
                    }
                } else {
                    flags1[i+1] = flags1[i] + 1;
                    flags2[i+1] = flags2[i] + 1;
                }
                res = max(res, max(flags1[i+1], flags2[i+1]));
            }
            return res;
        }
};
```

And it gets AC.
