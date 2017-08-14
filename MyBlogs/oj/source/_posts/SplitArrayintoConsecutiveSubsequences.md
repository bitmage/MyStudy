---
title: Split Array into Consecutive Subsequences
date: 2017-08-14 15:47:59
tags:
    - Heap
    - Greedy
---


> You are given an integer array sorted in ascending order (may contain duplicates), you need to split them into several subsequences, where each subsequences consist of at least 3 consecutive integers. Return whether you can make such a split.
>
> **Example 1:**
```
Input: [1,2,3,3,4,5]
Output: True
Explanation:
    You can split them into two consecutive subsequences :
    1, 2, 3
    3, 4, 5
```
> **Example 2:**
```
Input: [1,2,3,3,4,4,5,5]
Output: True
Explanation:
    You can split them into two consecutive subsequences :
    1, 2, 3, 4, 5
    3, 4, 5
```
> **Example 3:**
```
Input: [1,2,3,4,4,5]
Output: False
```
> **Note:**
> + The length of the input is in range of [1, 10000]

<!--more-->

At first， I don't have many thoughts ... Except the straight-forward solution. How about split the array one by one.

For some reason, I really want to change the problem into that find two consecutive arrays can be form this array.

Then, I find a way to use the priority_queue to store the mid value of the arrangement.

```
using namespace std;

class Solution {
    public:
        bool isPossible(vector<int>& nums) {
            if (nums.size() < 3) {
                return false;
            }

            unordered_map<int, priority_queue<int, vector<int>, std::greater<int>>> backs;
            int needMore = 0;
            for (auto num : nums) {
                if (backs[num - 1].empty()) {
                    backs[num].push(1);
                    needMore++;
                } else {
                    int count = backs[num - 1].top() + 1;
                    backs[num - 1].pop();
                    backs[num].push(count);
                    if (count == 3) {
                        needMore--;
                    }
                }
            }

            return needMore == 0;
        }
};
```

It gets AC.
