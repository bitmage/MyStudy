---
title: Beautiful Arrangement
date: 2017-02-24 15:47:20
tags:
    - Backtracking
---


> Suppose you have N integers from 1 to N.
>
> We define a beautiful arrangement as an array that is constructed by these N numbers successfully if one of the following is true for the ith position (1 ≤ i ≤ N) in this array:
>
> + The number at the ith position is divisible by i.
> + i is divisible by the number at the ith position.
>
> Now given N, how many beautiful arrangements can you construct?
>
> Example 1:
> + Input: 2
> + Output: 2
>
> Explanation:
>
> + The first beautiful arrangement is [1, 2]:
> + Number at the 1st position (i=1) is 1, and 1 is divisible by i (i=1).
> + Number at the 2nd position (i=2) is 2, and 2 is divisible by i (i=2).
> + The second beautiful arrangement is [2, 1]:
> + Number at the 1st position (i=1) is 2, and 2 is divisible by i (i=1).
> + Number at the 2nd position (i=2) is 1, and i (i=2) is divisible by 1.
>
> Note:
> + N is a positive integer and will not exceed 15.

<!--more-->

This is Leetcode No.526, First I will share my normal solution. As the tag says 'Backtracking', so I use the similiar method as show all the permutation of a array. Just add some condition before go further.

```
class Solution {
    public:
        int res;
        int countArrangement(int N) {
            res = 0;
            vector<int> nums(N + 1);
            _generate(nums, 1);
            return res;
        }

        void _generate(vector<int> nums, int currentLength) {
            if (currentLength == (int)nums.size()) {
                res++;
            } else {
                for (int i = 1; i < (int)nums.size(); i++) {
                    if (nums[i] == 0 && (i % currentLength == 0 || currentLength % i == 0)) {
                        nums[i] = 1;
                        _generate(nums, currentLength + 1);
                        nums[i] = 0;
                    }
                }
            }
        }
};
```

It gets AC. But there is a much fucker solution. Just show the result of all the 15 result. LOL.
