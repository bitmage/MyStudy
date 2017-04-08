---
title: Max Consecutive Ones
date: 2017-02-19 16:58:58
tags:
    - Array
---

> Given a binary array, find the maximum number of consecutive 1s in this array.
>
> Example 1:
>
> Input: [1,1,0,1,1,1]
>
> Output: 3
>
> Explanation:
>  + The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.
>
> Note:
>
> + The input array will only contain 0 and 1.
> + The length of input array is a positive integer and will not exceed 10,000

<!--more-->

This is Leetcode No.485, and it is an easy problem. Here is my solution:

```
class Solution {
    public:
        int findMaxConsecutiveOnes(vector<int>& nums) {
            if (nums.size() == 0) {
                return 0;
            }

            int res = 0, current = 0;
            for (int i = 0; i < (int)nums.size(); i++) {
                if (nums[i] == 0) {
                    current = 0;
                } else {
                    current = current + 1;
                }
                res = max(res, current);
            }
            return res;
        }
};
```

And it gets AC.
