---
title: Find K-th Smallest Pair Distance
date: 2017-11-14 15:46:50
tags:
    - Array
    - Binary Search
---

> Given an integer array, return the k-th smallest distance among all the pairs. The distance of a pair (A, B) is defined as the absolute difference between A and B.
>
> **Example 1:**
```
Input:
    nums = [1,3,1]
    k = 1
Output: 0
Explanation:
    Here are all the pairs:
    (1,3) -> 2
    (1,1) -> 0
    (3,1) -> 2
    Then the 1st smallest distance pair is (1,1), and its distance is 0.
```
> **Note:**
> + 2 <= len(nums) <= 10000.
> + 0 <= nums[i] < 1000000.
> + 1 <= k <= len(nums) * (len(nums) - 1) / 2.

<!--more-->

At first, I think this problem should be that we should use that O(N^2) method calculate all the pairs. Then sort the result.

Or we can use a map to store that by `<num, appear-times>`, then we can use the appear-times * appear-times to get the total times. But the worst situation is still O(N^2).

Then, we can use the Binary-search. We sort the array first:

```
using namespace std;

class Solution
{
public:
    int smallestDistancePair(vector<int>& nums, int k)
    {
        sort(nums.begin(), nums.end());

        int minD = 0, maxD = nums[nums.size() - 1] - nums[0];
        while (minD < maxD) {
            int midD = (maxD + minD)/2;

            int left = 0;
            int count = 0;
            for (int right = 0; right < (int)nums.size(); right++) {
                while (nums[right] - nums[left] > midD) {
                    left++;
                }
                count += right - left;
            }

            if (count >= k) {
                maxD = midD;
            } else if (count < k) {
                minD = midD + 1;
            }
        }
        return minD;
    }
};
```

Then we can count the result one by one. The time complexity is (O(NlogK + NlogN)), K is the max distance.

It gets AC. Done.
