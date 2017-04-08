---
title: Container With Most Water
date: 2017-02-26 17:52:03
tags:
    - Array
    - Two Pointers
---

> Given n non-negative integers a1, a2, ..., an, where each represents a point at coordinate (i, ai).
>
> n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0).
>
> Find two lines, which together with x-axis forms a container, such that the container contains the most water.
>
> Note: You may not slant the container and n is at least 2.

<!--more-->

This is Leetcode No.11. Because I should prepare for the incoming interview of the USTC.

So, I gave up the Leetcode contest.

At first, I thought this problem is to figure out how many water can this sticks can container.

However, this problem is to figure out what is the max value of `min(heights[leftIdx], heights[rightIdx]) * (rightIdx - leftIdx)`.

So the solution is simple.


```
using namespace std;

class Solution {
    public:
        int maxArea(vector<int>& heights) {
            int leftIdx = 0, rightIdx = heights.size() - 1, height = max(heights[leftIdx], heights[rightIdx]), res = INT_MIN;
            while (leftIdx < rightIdx) {
                height = min(heights[leftIdx], heights[rightIdx]);
                res = max(height * (rightIdx - leftIdx), res);
                while (leftIdx < rightIdx && heights[leftIdx] <= height) {
                    leftIdx++;
                }
                while (leftIdx < rightIdx && heights[rightIdx] <= height) {
                    rightIdx--;
                }
            }
            return res;
        }
};
```

Because if the new leftIdx and the new rightIdx are not larger than the older, their result will never larger than before.

It gets AC.
