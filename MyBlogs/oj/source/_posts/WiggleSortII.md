---
title: Wiggle Sort II
date: 2017-04-15 21:56:35
tags:
    - Array
---

> Given an unsorted array nums, reorder it such that nums[0] < nums[1] > nums[2] < nums[3]....
>
> Example:
>```
(1). Given nums = [1, 5, 1, 1, 6, 4], one possible answer is [1, 4, 1, 5, 1, 6].
(2). Given nums = [1, 3, 2, 2, 3, 1], one possible answer is [2, 3, 1, 3, 1, 2].
```
> Note:
> You may assume all input has valid answer.
>
> Follow Up:
> Can you do it in O(n) time and/or in-place with O(1) extra space?

<!--more-->

This is Leetcode No.312. It is not an easy problem. Because all you can find is a O(nlogn) method.

You have to find the middle number and then the divide these numbers into 3 kinds:

1. larger than the middle.
2. equal to the middle.
3. smaller than the middle.

Then, you have to mark these numbers, into a map like following:

```
Original Index:    0  1  2  3  4  5  6  7  8  9 10 11
Mapped Index:      1  3  5  7  9 11  0  2  4  6  8 10
```

Then change the Mapped index into the original index.

```
Mapped Indices:      0  1  2  3  4  5  6  7  8  9 10 11
Original Indices:    6  0  7  1  8  2  9  3 10  4 11  5   (wiggled)
```

Then here the result comes. But how to find the middle number? You may find the sorting first. But even the quick-sort will use O(nlogn) time. So, Here I use the nth_element method in STL. Its time cost is O(n) (cheating :)) .

```
using namespace std;

class Solution {
    public:
        void wiggleSort(vector<int>& nums) {
            if (nums.empty()) {
                return;
            }
            int n = nums.size();

            vector<int>::iterator nth = next(nums.begin(), n / 2);
            nth_element(nums.begin(), nth, nums.end());
            int median = *nth;

            auto m = [n](int idx) { return (2 * idx + 1) % (n | 1); };
            int first = 0, mid = 0, last = n - 1;
            while (mid <= last) {
                if (nums[m(mid)] > median) {
                    swap(nums[m(first)], nums[m(mid)]);
                    ++first;
                    ++mid;
                }
                else if (nums[m(mid)] < median) {
                    swap(nums[m(mid)], nums[m(last)]);
                    --last;
                }
                else {
                    ++mid;
                }
            }
        }
};
```

It gets AC.
