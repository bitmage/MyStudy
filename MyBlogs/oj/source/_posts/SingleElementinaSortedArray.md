---
title: Single Element in a Sorted Array
date: 2017-03-09 10:29:04
tags:
    - Array
    - Binary Search
---

> Given a sorted array consisting of only integers where every element appears twice except for one element which appears once. Find this single element that appears only once.
>
> Example 1:
>```
Input: [1,1,2,3,3,4,4,8,8]
Output: 2
```
> Example 2:
>```
Input: [3,3,7,7,10,11,11]
Output: 10
```
> Note: Your solution should run in O(log n) time and O(1) space.

<!--more-->

This is Leetcode No.540. For some reason it will be a easy problem if the time limit is O(n).

Its answer will be like these:

```
class Solution {
    public:
        int singleNonDuplicate(vector<int>& nums) {
            if (nums.size() == 1) {
                return nums[0];
            }

            if (nums[0] != nums[1]) {
                return nums[0];
            }

            for (int i = 1; i < (int)nums.size() - 1; i++) {
                if (!(nums[i - 1] == nums[i] || nums[i] == nums[i + 1])) {
                    return nums[i];
                }
            }

            if (nums[nums.size() - 1] != nums[nums.size() - 2]) {
                return nums[nums.size() - 1];
            }

            return -1;
        }
};
```

It gets AC. However its time complex is O(n). So, it is not the best solution. So, what do you think of O(logN), I first come up with binary search.

We can understand that every number in this array appearing twice. So, the number must be times of 2.

Picutre this:

```
idx: 0 1 2 3 4 5 6 7 8
     1 1 2 3 3 4 4 5 5
mid:         4
     1 1 2 3 3 4 4 5 5
```

We find that nums[mid] = 4 and it's pre is 3. So we can quickly conclude that the single one is between 0 ~ 4.

So, the solution will be improved by these ways:

```
using namespace std;

class Solution {
    public:
        int singleNonDuplicate(vector<int>& nums) {
            int n = nums.size(), left = 0, right = n - 1;
            while (left < right) {
                int mid = left + (right - left) / 2;
                if (mid % 2 == 0) {
                    if (nums[mid] == nums[mid-1]) right = mid - 2;
                    else if (nums[mid] == nums[mid+1]) left = mid + 2;
                    else return nums[mid];
                }
                else {
                    if (nums[mid] == nums[mid-1]) left = mid + 1;
                    else if (nums[mid] == nums[mid+1]) right = mid - 1;
                }
            }
            return nums[left];
        }
};
```

So, the time complex is O(logN), the problem is solved.
