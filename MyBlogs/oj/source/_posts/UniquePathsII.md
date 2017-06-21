---
title: Unique Paths II
date: 2017-06-21 22:03:28
tags:
    - Dynamic Programming
    - Array
---

> Follow up for "Unique Paths":
>
> Now consider if some obstacles are added to the grids. How many unique paths would there be?
>
> An obstacle and empty space is marked as 1 and 0 respectively in the grid.
>
> **For example**
>
> There is one obstacle in the middle of a 3x3 grid as illustrated below.
```
[
    [0,0,0],
    [0,1,0],
    [0,0,0]
]
```
> The total number of unique paths is 2.
>
> **Note:**
> + m and n will be at most 100.

<!--more-->

It is Leetcode No.63. It is really a easy problem.

Same as the problem metioned "Unique Paths", we just need to mark the number of the cell from 1 to 0, if the cell has the obstacle.

Then the code is as following:

```
using namespace std;

class Solution {
    public:
        int uniquePathsWithObstacles(vector<vector<int> >& MAP) {
            vector<vector<int> > DP(MAP.size(), vector<int>(MAP[0].size(), 0));

            for (int idx = 0; idx < (int)MAP.size(); idx++) {
                if (MAP[idx][0] == 1) {
                    break;
                }
                DP[idx][0] = 1;
            }
            for (int idy = 0; idy < (int)MAP[0].size(); idy++) {
                if (MAP[0][idy] == 1) {
                    break;
                }
                DP[0][idy] = 1;
            }

            for (int idx = 1; idx < (int)MAP.size(); idx++) {
                for (int idy = 1; idy < (int)MAP[0].size(); idy++) {
                    if (MAP[idx][idy] == 0) {
                        DP[idx][idy] = DP[idx - 1][idy] + DP[idx][idy - 1];
                    }
                }
            }

            return DP[MAP.size() - 1][MAP[0].size() - 1];
        }
};
```

It gets AC.
