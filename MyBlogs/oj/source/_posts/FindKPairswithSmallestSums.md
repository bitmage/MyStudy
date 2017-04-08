---
title: Find K Pairs with Smallest Sums
date: 2017-03-31 09:04:50
tags:
    - Heap
---

> You are given two integer arrays nums1 and nums2 sorted in ascending order and an integer k.
>
> Define a pair (u,v) which consists of one element from the first array and one element from the second array.
>
> Find the k pairs (u1,v1),(u2,v2) ...(uk,vk) with the smallest sums.
>
> Example 1:
>```
Given nums1 = [1,7,11], nums2 = [2,4,6],  k = 3
Return: [1,2], [1,4], [1,6]

The first 3 pairs are returned from the sequence:
[1,2], [1,4], [1,6], [7,2], [7,4], [11,2], [7,6], [11,4], [11,6]
```
> Example 2:
>```
Given nums1 = [1,1,2], nums2 = [1,2,3],  k = 2
Return: [1,1], [1,1]

The first 2 pairs are returned from the sequence:
[1,1], [1,1], [1,2], [2,1], [1,2], [2,2], [1,3], [1,3], [2,3]
```
> Example 3:
>```
Given nums1 = [1,2], nums2 = [3],  k = 3
Return: [1,3], [2,3]

All possible pairs are returned from the sequence:
[1,3], [2,3]
```

<!--more-->

This is Leetcode No.373. It is not a hard thinking problem instead, its solution is simple. But you should figure out all corner cases.

Because of the make_heap function in C++ STL, you can quickly find the solution with heap.

```
using namespace std;

int cmp (const pair<int, int> a, const pair<int, int> b) {
    return a.first + a.second < b.first + b.second;
}

class Solution {
    public:
        vector<pair<int, int> > kSmallestPairs(vector<int>& nums1, vector<int>& nums2, int k) {
            sort(nums1.begin(), nums1.end());
            sort(nums2.begin(), nums2.end());

            vector<pair<int, int> > res;

            for (int idx = 0; idx < (int)nums1.size(); idx++) {
                for (int idy = 0; idy < (int)nums2.size(); idy++) {
                    pair<int, int> pair;
                    pair.first = nums1[idx];
                    pair.second = nums2[idy];

                    res.push_back(pair);
                    push_heap(res.begin(), res.end(), cmp);

                    if ((int)res.size() > k) {
                        pop_heap(res.begin(),res.end(), cmp);
                        res.pop_back();
                    }
                }
            }

            return res;
        }
};
```

It is simple and gets AC.
