---
title: Find the Duplicate Number
date: 2017-02-08 09:35:17
tags:
    - Binary Search
    - Array
    - Two Pointers
---

> Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.
>
> Note:
>  + You must not modify the array (assume the array is read only).
>  + You must use only constant, O(1) extra space.
>  + Your runtime complexity should be less than O(n2).
>  + There is only one duplicate number in the array, but it could be repeated more than once.

<!--more-->

This is Leetcode 287, and it is easy if you can modify this array. Sort and find, O(NlogN) time complexity.

If you can use O(N) space, you can use a array to store all the num and check whether it is appeared once.

However, you can not modify, so you need to find another solution.

I don't know if I use bitset is ok? If it is good, I can finish this with O(1) space and O(n) time.

And if I can use the O(n2) time complexity, I can use the two loops solution.

If the duplicate number can only be repeated once. U can make this problem into a Math problem.

So, I come up with such a solution:

```
class Solution {
    public:
        int findDuplicate(vector<int>& nums) {
            if (nums.size() <= 1) {
                return -1;
            }

            int n = nums.size();
            int slow = n;
            int fast = n;
            do {
                slow = nums[slow - 1];
                fast = nums[nums[fast - 1] - 1];
            } while (slow != fast);
            slow = n;
            while (slow != fast) {
                slow = nums[slow - 1];
                fast = nums[fast - 1];
            }
            return slow;
        }
};
```

For the explaination:

suppose the array is

 + index: 0 1 2 3 4 5
 + value: 2 5 1 1 4 3

first subtract 1 from each element in the array, so it is much easy to understand.
use the value as pointer. the array becomes:
 
 + index: 0 1 2 3 4 5
 + value: 1 4 0 0 3 2

enter image description here

![description](http://cyukang.com/images/cycle3.png)

Second if the array is

 + index: 0 1 2 3 4 5
 + value: 0 1 2 4 2 3

we must choose the last element as the head of the linked list. If we choose 0, we can not detect the cycle.

Now the problem is the same as find the cycle in linkedlist!
