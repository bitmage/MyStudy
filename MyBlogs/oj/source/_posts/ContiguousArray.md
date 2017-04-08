---
title: Contiguous Array
date: 2017-02-21 16:17:35
tags:
    - Hash Table
---

> Given a binary array, find the maximum length of a contiguous subarray with equal number of 0 and 1.
>
> Example 1:
> + Input: [0,1]
> + Output: 2
> + Explanation: [0, 1] is the longest contiguous subarray with equal number of 0 and 1.
>
> Example 2:
> + Input: [0,1,0]
> + Output: 2
> + Explanation: [0, 1] (or [1, 0]) is a longest contiguous subarray with equal number of 0 and 1.
>
> Note: The length of the given binary array will not exceed 50,000.

<!--more-->

This is Leetcode No.525. We can quickly find a solution that:

```
    0 1 0 0 1
0   1 1 2 3 3
1   0 1 1 1 2
```

We can use DP[idx][0-1] to represent the num of each index. However, we must to use DP[idx1][0-1] - DP[idx2][0-1] to find the exactly num between idx1 and idx2. So the time complex will be O(n^2).

So, we must to find a better solution to solve the problem.

We can use similar solution as the Best time to sell and buy stock.

What if we have a sequence [0, 0, 0, 0, 1, 1]? the maximum length is 4, the count starting from 0, will equal -1, -2, -3, -4, -3, -2, and won't go back to 0 again. But wait, the longest subarray with equal number of 0 and 1 started and ended when count equals -2. We can plot the changes of count on a graph, as shown below. Point (0,0) indicates the initial value of count is 0, so we count the sequence starting from index 1. The longest subarray is from index 2 to 6.

![https://leetcode.com/uploads/files/1487543036101-figure_1.png](https://leetcode.com/uploads/files/1487543036101-figure_1.png)

So, we make the time complex to O(n).

Here comes the solution:

```
class Solution {
    public:
        int findMaxLength(vector<int>& nums) {
            int count = 0;
            map<int, vector<int> > idxs;
            vector<int> idxlist;
            idxlist.push_back(0);
            idxs.insert(pair<int, vector<int> >(0, idxlist));
            for (int idx = 0; idx < (int)nums.size(); idx++) {
                if (nums[idx] == 0) {
                    count--;
                } else {
                    count++;
                }
                if (idxs.find(count) == idxs.end()) {
                    vector<int> idxList;
                    idxList.push_back(idx + 1);
                    idxs.insert(pair<int, vector<int> >(count, idxList));
                } else {
                    idxs.find(count)->second.push_back(idx + 1);
                }
            }

            int res = 0;
            for (auto p : idxs) {
                if (p.second.size() > 1) {
                    res = max(res, p.second[p.second.size() - 1] - p.second[0]);
                }
            }
            return res;
        }
};
```

It gets AC.
