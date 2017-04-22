---
title: Range Sum Query - Mutable
date: 2017-04-22 11:00:35
tags:
    - Segment Tree
    - Binary Indexed Tree
---


> Given an integer array nums, find the sum of the elements between indices i and j (i ≤ j), inclusive.
> The update(i, val) function modifies nums by updating the element at index i to val.
>
> Example:
```
Given nums = [1, 3, 5]

sumRange(0, 2) -> 9
update(1, 2)
sumRange(0, 2) -> 8
```
> Note:
>
> + The array is only modifiable by the update function.
> + You may assume the number of calls to update and sumRange function is distributed evenly.

<!--more-->

This is Leetcode No.307. At first time, I just think in this way: sumRange(0, 2) = sum(0~2) - sum(0~0).

So, the code can be like these:

```
using namespace std;

class NumArray {
    public:
        vector<int> DP;
        vector<int> NUMS;
        NumArray(vector<int> nums) {
            DP.clear();
            NUMS.clear();

            for (int idx = 0; idx < (int)nums.size(); idx++) {
                NUMS.push_back(nums[idx]);
                if (idx == 0) {
                    DP.push_back(nums[idx]);
                } else {
                    DP.push_back(nums[idx] + DP[idx - 1]);
                }
            }
        }

        void update(int idx, int val) {
            int delta = val - NUMS[idx];
            for (int i = idx; i < (int)DP.size(); i++) {
                DP[i] = DP[i] + delta;
            }
            NUMS[idx] = val;
        }

        int sumRange(int idx, int idy) {
            return DP[idy] - (idx > 0 ? DP[idx - 1] : 0);
        }
};
```

But it gets TLE, because the update function will use O(n) time complex. So that we should to find out other solutions.

You will find two other ways:

1. use blocks to maintain a small range of numbers;
2. use segment tree data structure.

The first method is simple, what you should do is to merge a mall range numbers into a number. Then follow the steps above.

So, I want to show the second method - Segment Tree.

![Figure 2. Illustration of Segment tree.](https://leetcode.com/media/original_images/307_RSQ_SegmentTree.png)

Then the solution becomes:

```
using namespace std;

class NumArray {
    private:
        vector<int> TREE;
        int N;
        void buildTree(vector<int> nums) {
            for (int i = N, j = 0;  i < 2 * N; i++,  j++)
                TREE[i] = nums[j];
            for (int i = N - 1; i > 0; --i)
                TREE[i] = TREE[i * 2] + TREE[i * 2 + 1];
        }

    public:
        NumArray(vector<int> nums) {
            if (nums.size() > 0) {
                N = nums.size();
                for (int i = 0; i < N * 2; i++) {
                    TREE.push_back(0);
                }
                buildTree(nums);
            }
        }


        void update(int pos, int val) {
            pos += N;
            TREE[pos] = val;
            while (pos > 0) {
                int left = pos;
                int right = pos;
                if (pos % 2 == 0) {
                    right = pos + 1;
                } else {
                    left = pos - 1;
                }
                TREE[pos / 2] = TREE[left] + TREE[right];
                pos /= 2;
            }
        }

        int sumRange(int l, int r) {
            l += N;
            r += N; int sum = 0;
            while (l <= r) {
                if ((l % 2) == 1) {
                    sum += TREE[l];
                    l++;
                }
                if ((r % 2) == 0) {
                    sum += TREE[r];
                    r--;
                }
                l /= 2;
                r /= 2;
            }
            return sum;
        }
};
```

It gets AC.
