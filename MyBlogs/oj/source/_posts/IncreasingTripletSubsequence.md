---
title: Increasing Triplet Subsequence
date: 2017-04-05 16:41:21
tags:
    - Dynamic Programming
    - Array
---

> Given an unsorted array return whether an increasing subsequence of length 3 exists or not in the array.
>
> Formally the function should:
>
> ```
    Return true if there exists i, j, k
    such that arr[i] < arr[j] < arr[k] given 0 ≤ i < j < k ≤ n-1 else return false.
```
> Your algorithm should run in O(n) time complexity and O(1) space complexity.
>
> Examples:
>```
Given [1, 2, 3, 4, 5],
return true.

Given [5, 4, 3, 2, 1],
return false.
```

<!--more-->

This is Leetcode No.334. You can quickly find the solution with O(n^3) time complex.

```
using namespace std;

class Solution {
    public:
        bool increasingTriplet(vector<int>& nums) {
            for (int idx = 0; idx < (int)nums.size(); idx++) {
                for (int idy = idx + 1; idy < (int)nums.size(); idy++) {
                    for (int idz = idy + 1; idz < (int)nums.size(); idz++) {
                        if (nums[idx] < nums[idy] && nums[idy] < nums[idz]) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
};
```

But it gets TLE without doubt.

Then, I find a DP solution. Use a `map<int, int>` to store current status. This will make the time complex to O(n^2).

```
using namespace std;

class Solution {
    public:
        bool increasingTriplet(vector<int>& nums) {
            map<int, int> DP;
            for (int idx = 0; idx < (int)nums.size(); idx++) {
                if (DP.find(nums[idx]) == DP.end()) {
                    DP.insert(pair<int, int>(nums[idx], 1));
                }
                for (auto i : DP) {
                    if (i.first < nums[idx]) {
                        DP.find(nums[idx])->second = max(i.second + 1, DP.find(nums[idx])->second);
                    }
                }
                if (DP.find(nums[idx])->second == 3) {
                    return true;
                }
            }
            return false;
        }
};
```

But it still gets a TLE. So, I turn to the Discuss to find out solutions. Then I find the best solution of this problem.

```
using namespace std;

class Solution {
    public:
        bool increasingTriplet(vector<int>& nums) {
            int minNum1 = INT_MAX, minNum2 = INT_MAX;
            for (auto num : nums) {
                if (num <= minNum1) {
                    minNum1 = num;
                } else if (num <= minNum2) {
                    minNum2 = num;
                } else {
                    return true;
                }
            }
            return false;
        }
};
```

It use two marks to store the best item so far. Excellent solution. It gets AC.
