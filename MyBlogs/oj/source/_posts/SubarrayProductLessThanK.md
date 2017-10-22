---
title: Subarray Product Less Than K
date: 2017-10-22 16:10:34
tags:
    - Array
    - Math
---

> Your are given an array of positive integers nums.
>
> Count and print the number of (contiguous) subarrays where the product of all the elements in the subarray is less than k.
>
> **Example 1:**
```
Input: nums = [10, 5, 2, 6], k = 100
Output: 8
Explanation: The 8 subarrays that have product less than 100 are: [10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6].
Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.
```
> **Note:**
> + 0 < nums.length <= 50000.
> + 0 < nums[i] < 1000.
> + 0 <= k < 10^6.

<!--more-->

I write this problem here is not because it is hard, instead I can't write the solution during the contest. WTF!

I use the backtracking solution which causes a TLE.

But, it is actually an easy problem. We just need a straight forward solution.

```cpp
using namespace std;

class Solution
{
public:
	int numSubarrayProductLessThanK(vector<int>& nums, int k)
	{
		int res = 0;
		for (int i = 0; i < (int)nums.size(); i++) {
			int product = nums[i];
			if (product < k) {
				res++;
			}
			for (int j = i+1; j < (int)nums.size(); j++) {
				product = product * nums[j];
				if (product < k) {
					res++;
				} else {
					break;
				}
			}
		}
		return res;
	}
};
```

It gets AC. Simple.
