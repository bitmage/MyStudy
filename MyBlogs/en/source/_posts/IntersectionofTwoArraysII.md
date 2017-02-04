---
title: Intersection of Two Arrays II
date: 2017-01-08 22:36:11
tags:
    - Binary Search
    - Hash Table
    - Two Pointers
    - Sort
---


> Given two arrays, write a function to compute their intersection.
>
> Example:
> Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].
>
> Note:
>
>   + Each element in the result should appear as many times as it shows in both arrays.
>   + The result can be in any order.
>
> Follow up:
>
>   + What if the given array is already sorted? How would you optimize your algorithm?
>   + What if nums1's size is small compared to nums2's size? Which algorithm is better?
>   + What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?

<!--more-->

This is Leetcode 350. It's an easy problem, we can quickly write a solution based on hash map:

```
class Solution {
    public:
        vector<int> intersect(vector<int>& nums1, vector<int>& nums2) {
            map<int, int> nums;
            vector<int> res;


            for (int i = 0; i < (int)nums1.size(); i++) {
                if (nums.find(nums1[i]) == nums.end()) {
                    nums.insert(pair<int, int>(nums1[i], 1));
                } else {
                    nums.find(nums1[i])->second++;
                }
            }

            for (int i = 0; i < (int)nums2.size(); i++) {
                if (nums.find(nums2[i]) != nums.end() && nums.find(nums2[i])->second > 0) {
                    res.push_back(nums2[i]);
                    nums.find(nums2[i])->second--;
                }
            }

            return res;
        }
};
```

Its time complex is O(n), and its space complex is O(n), which makes it not a good solution. So, as the follow up, we can assume that the both arrays are sorted. Then we can use the two points method like below:

```
class Solution {
    public:
        vector<int> intersect(vector<int>& nums1, vector<int>& nums2) {
            int idx = 0, idy = 0;
            vector<int> res;

            sort(nums1.begin(), nums1.end());
            sort(nums2.begin(), nums2.end());

            while (idx < (int)nums1.size() && idy < (int)nums2.size()) {
                if (nums1[idx] == nums2[idy]) {
                    res.push_back(nums1[idx]);
                    idx++; idy++;
                } else if (nums1[idx] > nums2[idy]) {
                    idy++;
                } else if (nums1[idx] < nums2[idy]) {
                    idx++;
                }
            }

            return res;
        }
};
```

Its time complex is O(n) but its space complex is O(1), which makes it better than the hash map solution.

If the memeory is limited such that we can't load all elements into the memory at once? This is a common problem. And we can use the hash algorithm to divide all elements in to different group and then we deal with them one by one.

