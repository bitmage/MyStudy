---
title: 132 Pattern
date: 2017-01-03 13:46:25
tags:
    - Stack
---

> Given a sequence of n integers a1, a2, ..., an, a 132 pattern is a subsequence ai, aj, ak such that i < j < k and ai < ak < aj. Design an algorithm that takes a list of n numbers as input and checks whether there is a 132 pattern in the list.
>
> Note: n will be less than 15,000.
>
> Example 1:
> Input: [1, 2, 3, 4]
> Output: False
>
> Explanation: There is no 132 pattern in the sequence.
> 
> Example 2:
> Input: [3, 1, 4, 2]
> Output: True
>
> Explanation: There is a 132 pattern in the sequence: [1, 4, 2].
>
> Example 3:
> Input: [-1, 3, 2, 0]
> Output: True
>
> Explanation: There are three 132 patterns in the sequence: [-1, 3, 2], [-1, 3, 0] and [-1, 2, 0].

<!--more-->

This is Leetcode 456. As the problem description, we can quickly write this solution like this:

```
using namespace std;

class Solution {
    public:
        bool find132pattern(vector<int>& nums) {
            for (int i = 0; i < (int)nums.size() - 2; i++) {
                for (int j = i + 1; j < (int)nums.size() - 1; j++) {
                    for (int k = j + 1; k < (int)nums.size(); k++) {
                        if (check(nums, i, j, k)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        bool check(vector<int> &nums, int idx, int idy, int idz) {
            if (nums[idx] < nums[idy]
                    && nums[idz] < nums[idy]
                    && nums[idx] < nums[idz]) {
                return true;
            }
            return false;
        }
};
```
But it's time complex is O(n^3), and it will get TLE. So, we try to think another way. As a similar problem, try to find a array S1 < S2 < S3, we will find use two pointers to aim at the start and the end of the array.

So, here we can use a similar solution. We can use a stack to store the num which is bigger than S3, and store it try to find the possible S3.

For more detail, use [9, 11, 8, 9, 10, 7, 9] as an example:

EXAMPLE:
 + i = 6, nums = [ 9, 11, 8, 9, 10, 7, 9 ], S1 candidate = 9, S3 candidate = None, Stack = Empty
 + i = 5, nums = [ 9, 11, 8, 9, 10, 7, 9 ], S1 candidate = 7, S3 candidate = None, Stack = [9]
 + i = 4, nums = [ 9, 11, 8, 9, 10, 7, 9 ], S1 candidate = 10, S3 candidate = None, Stack = [9,7]
 + i = 3, nums = [ 9, 11, 8, 9, 10, 7, 9 ], S1 candidate = 9, S3 candidate = 9, Stack = [10]
 + i = 2, nums = [ 9, 11, 8, 9, 10, 7, 9 ], S1 candidate = 8, S3 candidate = 9, Stack = [10,9] We have 8 < 9, sequence found!

So, the solution is:

```
bool find132pattern(vector<int>& nums) {
    int s3 = INT_MIN, s1;
    std::stack<int> stack;
    for (int i = nums.size() - 1; i >= 0; i--) {
        s1 = nums[i];
        if (s3 > s1) {
            return true;
        } else {
            while (!stack.empty() && nums[i] > stack.top()) {
                s3 = stack.top();
                stack.pop();
            }
        }
        stack.push(nums[i]);
    }
    return false;
}
```
