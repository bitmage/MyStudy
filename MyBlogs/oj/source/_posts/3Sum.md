---
title: 3 Sum
date: 2017-11-02 15:21:36
tags:
    - Binary Search
    - Array
    - Two Pointers
---


> Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
>
> **Note: **
> + The solution set must not contain duplicate triplets.
>
> **For example:**
```
given array S = [-1, 0, 1, 2, -1, -4],

A solution set is:
[
  [-1, 0, 1],
  [-1, -1, 2]
]
```

<!--more-->

At first I think the 3 for loops solution. It absolutely get TLE.

Then I think how about use the 2 for loops and a Binary search to search the target num?

The code becaomes:

```
using namespace std;

class Solution
{
public:
    set<int> bsearch(vector<int> &nums, int l, int r, int v) {
        set<int> res;
        while (l <= r) {
            int mid = (l + r)/2;
            if (nums[mid] == v) {
                res.insert(mid);
                for (int i = mid + 1; i < (int)nums.size() && nums[i] == v; i++) {
                    res.insert(i);
                }
                for (int i = mid - 1; i >= 0 && nums[i] == v; i--) {
                    res.insert(i);
                }
                return res;
            } else if (nums[mid] > v) {
                r = mid - 1;
            } else {
                l = mid + 1;
            }
        }
        return res;
    }

    vector<vector<int>> threeSum(vector<int>& nums)
    {
        set<pair<int, int>> used;
        set<int> visited;
        vector<vector<int>> res;
        sort(nums.begin(), nums.end());
        for (int idx = 0; idx < (int)nums.size(); idx++) {
            if (visited.find(nums[idx]) != visited.end()) {
                continue;
            }
            visited.insert(nums[idx]);
            for (int idy = idx + 1; idy < (int)nums.size(); idy++) {
                if (used.find(pair<int, int>(nums[idx], nums[idy])) != used.end()) {
                    continue;
                }
                used.insert(pair<int, int>(nums[idx], nums[idy]));
                int need = -(nums[idx] + nums[idy]);
                set<int> finds = bsearch(nums, idy + 1, nums.size() - 1, need);
                finds.erase(idx);
                finds.erase(idy);
                if (finds.size() > 0) {
                    for (auto i : finds) {
                        vector<int> r;
                        r.push_back(nums[idx]);
                        r.push_back(nums[idy]);
                        r.push_back(nums[i]);
                        res.push_back(r);
                        break;
                    }
                }
            }
        }
        return res;
    }
};
```

It gets AC. But it is too slow. Then I use a two-pointers solution:

```
using namespace std;

class Solution
{
public:
    vector<vector<int>> threeSum(vector<int>& nums)
    {
        vector<vector<int>> res;
        sort(nums.begin(), nums.end());

        set<pair<pair<int, int>, int>> used;
        for (int i = 1; i < (int)nums.size() - 1; i++) {
            int left = 0, right = nums.size() - 1;

            while (left < i && right > i) {
                if (nums[left] + nums[right] + nums[i] > 0) {
                    right--;
                } else if (nums[left] + nums[right] + nums[i] < 0) {
                    left++;
                } else {
                    vector<int> r;

                    if (used.find(pair<pair<int, int>, int>(pair<int, int>(nums[left], nums[i]), nums[right])) == used.end()) {
                        r.push_back(nums[left]);
                        r.push_back(nums[i]);
                        r.push_back(nums[right]);
                        res.push_back(r);
                        used.insert(pair<pair<int, int>, int>(pair<int ,int>(nums[left], nums[i]), nums[right]));
                    }

                    if (left + 1 == i) {
                        right--;
                    } else {
                        left++;
                    }
                }
            }
        }
        return res;
    }
};
```

Using the mid one as a flag try to find the target number pair.

It gets AC too.
