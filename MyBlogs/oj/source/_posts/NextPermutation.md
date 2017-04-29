---
title: Next Permutation
date: 2017-04-29 17:34:02
tags:
    - Array
---

> Implement next permutation, which rearranges numbers into the lexicographically next greater permutation of numbers.
> 
> If such arrangement is not possible, it must rearrange it as the lowest possible order (ie, sorted in ascending order).
> 
> The replacement must be in-place, do not allocate extra memory.
> 
> Here are some examples. Inputs are in the left-hand column and its corresponding outputs are in the right-hand column.
>```
1,2,3 → 1,3,2
3,2,1 → 1,2,3
1,1,5 → 1,5,1
```

<!--more-->

This is Leetcode NO.31. If I can use the extra memory, I can quickly write the code as following:

```
using namespace std;

class Solution {
    public:
        vector<int> mark, res, first;
        void nextPermutation(vector<int>& nums) {
            res.clear();
            mark = nums;
            sort(nums.begin(), nums.end());
            vector<bool> visited(nums.size(), false);

            vector<int> current;
            _generate(nums, visited, current);
            if (isNext) {
                nums = first;
            } else {
                nums = res;
            }
        }

        bool isNext = false, isFirst = true;
        void _generate(vector<int> nums, vector<bool> visited, vector<int> current) {
            if (res.size() > 0 && res != mark) {
                return;
            }
            int isFinish = true;
            for (int idx = 0; idx < (int)visited.size(); idx++) {
                if (!visited[idx]) {
                    isFinish = false;
                }
            }
            if (isFinish) {
                if (isFirst) {
                    first = current;
                    isFirst = false;
                }
                if (isNext) {
                    res = current;
                    isNext = false;
                    return;
                }
                if (current == mark) {
                    isNext = true;
                    res = current;
                }
            }
            for (int idx = 0; idx < (int)nums.size(); idx++) {
                if (!visited[idx]) {
                    current.push_back(nums[idx]);
                    visited[idx] = true;
                    _generate(nums, visited, current);
                    visited[idx] = false;
                    current.pop_back();
                }
            }
        }
};
```

It can pass some short cases and cases without depulite numbers. But when the number array is too long, the solution will get TLE.

So, I must to figure out the solution wihich will not use the extra memory space.

Look at the cases:

+ 1, 2, 3
+ 3, 2, 1

Then I figure out this solution:

```
using namespace std;

class Solution {
    public:
        void nextPermutation(vector<int>& nums) {
            for (int idx = nums.size() - 1; idx >= 1; idx--) {
                if (nums[idx] > nums[idx - 1]) {
                    swap(nums[idx], nums[idx - 1]);
                    sort(nums.begin() + idx, nums.end());
                    return;
                }
            }
            sort(nums.begin(), nums.end());
            return;
        }
};
```

Easy to understand but it gets wrong answer on `1, 3, 2` case. The output is `312` instead of the correct one `213`.

So, I change the order that I use to change the number array, I sort the remain numbers earlier and find the minual number that larger than the nums[idx] instead of the one after it:

```
using namespace std;

class Solution {
    public:
        void nextPermutation(vector<int>& nums) {
            for (int idx = nums.size() - 1; idx >= 1; idx--) {
                if (nums[idx] > nums[idx - 1]) {
                    sort(nums.begin() + idx, nums.end());
                    for (int idy = idx; idy < (int)nums.size(); idy++) {
                        if (nums[idy] > nums[idx - 1]) {
                            swap(nums[idy], nums[idx - 1]);
                            break;
                        }
                    }
                    return;
                }
            }
            sort(nums.begin(), nums.end());
            return;
        }
};
```

It gets AC.
