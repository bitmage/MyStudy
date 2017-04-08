---
title: Next Greater Element II
date: 2017-02-27 14:15:55
tags:
    - Stack
---

> Given a circular array (the next element of the last element is the first element of the array), print the Next Greater Number for every element. The Next Greater Number of a number x is the first greater number to its traversing-order next in the array, which means you could search circularly to find its next greater number. If it doesn't exist, output -1 for this number.
>
> Example 1:
>
> + Input: [1,2,1]
> + Output: [2,-1,2]
> + Explanation:
>   - The first 1's next greater number is 2;
>   - The number 2 can't find next greater number;
>   - The second 1's next greater number needs to search circularly, which is also 2.
>
> Note: The length of given array won't exceed 10000.

<!--more-->

This is Leetcode No.503, it seems like its brother problem "Next Greater Element I". The different thing is that if you can't find the greater elment at the end of the array, you should start from the beginning.

So, I can quickly find the solution as following:

```
using namespace std;

class Solution {
    public:
        vector<int> nextGreaterElements(vector<int>& nums) {
            vector<int> res;

            for (int i = 0; i < (int)nums.size(); i++) {
                res.push_back(findNextGreaterElement(i, nums));
            }

            return res;
        }

        int findNextGreaterElement(int idx, vector<int> nums) {
            for (int i = idx + 1; i < (int)nums.size(); i++) {
                if (nums[i] > nums[idx]) {
                    return nums[i];
                }
            }

            for (int i = 0; i < idx; i++) {
                if (nums[i] > nums[idx]) {
                    return nums[i];
                }
            }

            return -1;
        }
};
```

It obsolutly gets a AC... I thought it will be a TLE...
