---
title: Contains Duplicate III
date: 2017-03-27 14:24:16
tags:
    - Binary Search Tree
---

> Given an array of integers, find out whether there are two distinct indices i and j in the array such that the absolute difference between nums[i] and nums[j] is at most t and the absolute difference between i and j is at most k.

<!--more-->

This is Leetcode No.220. It is a really fun problem. It seems like to find the number pair under these conditions. But you can transform this problem into a search problem.

For example, you can think like this: find the num1 and num2 in subarray from nums[i] to num[j] that their absolute difference between num1 and num2 is at most k.

This is my first submit code:

```
using namespace std;

class Solution {
    public:
        bool containsNearbyAlmostDuplicate(vector<int>& nums, int k, int t) {
            int res = false;
            for (int idx = 0; idx < (int)nums.size(); idx++) {
                for (int del = 1; del <= k && idx + del < (int)nums.size(); del++) {
                    if (abs(nums[idx] - nums[idx + del]) <= t) {
                        return true;
                    }
                }
            }
            return res;
        }
};
```

It has a problem that if the nums is INT_MAX and with numbers less than 0, it will overflow. So, I use long long to avoid this case.

Then the code becomes:

```
using namespace std;

class Solution {
    public:
        bool containsNearbyAlmostDuplicate(vector<int>& nums, int k, int t) {
            int res = false;
            for (int idx = 0; idx < (int)nums.size(); idx++) {
                for (int del = 1; del <= k && idx + del < (int)nums.size(); del++) {
                    if (abs((long long)nums[idx] - (long long)nums[idx + del]) <= t) {
                        return true;
                    }
                }
            }
            return res;
        }
};
```

It pass the test cases with a TLE.

So, I use the Binary Search to improve its performance. But it's time complex is O(nlogn). And I find a better solution in the Discuss.

```
using namespace std;

class Solution {
    public:
        bool containsNearbyAlmostDuplicate(vector<int>& nums, int k, int t) {
            set<int> window; // set is ordered automatically
            for (int i = 0; i < (int)nums.size(); i++) {
                if (i > k) window.erase(nums[i-k-1]); // keep the set contains nums i j at most k
                // |x - nums[i]| <= t  ==> -t <= x - nums[i] <= t;
                auto pos = window.lower_bound(nums[i] - t); // x-nums[i] >= -t ==> x >= nums[i]-t
                // x - nums[i] <= t ==> |x - nums[i]| <= t
                if (pos != window.end() && *pos - nums[i] <= t) return true;
                window.insert(nums[i]);
            }
            return false;
        }
};
```

And its time complex is O(N), excellent job he does. It absolutely get AC.
