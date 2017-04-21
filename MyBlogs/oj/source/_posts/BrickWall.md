---
title: Brick Wall
date: 2017-04-09 16:09:27
tags:
    - Hash Table
---

> There is a brick wall in front of you. The wall is rectangular and has several rows of bricks. The bricks have the same height but different width. You want to draw a vertical line from the top to the bottom and cross the least bricks.
>
> The brick wall is represented by a list of rows. Each row is a list of integers representing the width of each brick in this row from left to right.
>
> If your line go through the edge of a brick, then the brick is not considered as crossed. You need to find out how to draw the line to cross the least bricks and return the number of crossed bricks.
>
> You cannot draw a line just along one of the two vertical edges of the wall, in which case the line will obviously cross no bricks.
>
> Example:
>
> **Input**:
>```
[
    [1,2,2,1],
    [3,1,2],
    [1,3,2],
    [2,4],
    [3,1,2],
    [1,3,1,1]
]
```
> **Output:** 2
>
<!--more-->
> **Explanation:**
>
> ![Explanation](https://leetcode.com/static/images/problemset/brick_wall.png)
>
> Note:
>   + The width sum of bricks in different rows are the same and won't exceed INT_MAX.
>   + The number of bricks in each row is in range [1,10,000]. The height of wall is in range [1,10,000]. Total number of bricks of the wall won't exceed 20,000.

This is Leetcode No.554, and it is also a problem of Hihocode contest.

First I find a solution about this poblem with an easy-to-think way.

```
using namespace std;

class Solution {
    public:
        int leastBricks(vector<vector<int> >& wall) {
            int maxSum = 0;
            for (int i = 0; i < (int)wall[0].size(); i++) {
                maxSum += wall[0][i];
            }

            map<int, set<int> > levels;
            for (int i = 0; i < (int)wall.size(); i++) {
                int level = 0;
                set<int> brickSum;
                for (int idx = 0; idx < (int)wall[idx].size() - 1; idx++) {
                    level += wall[i][idx];
                    brickSum.insert(level);
                }
                levels.insert(pair<int, set<int> >(i, brickSum));
            }

            int res = wall.size();
            for (int level = 0; level < (int)wall.size(); level++) {
                for (auto i : levels.find(level)->second) {
                    int val = wall.size();
                    for (int idx = 0; idx < (int)wall.size(); idx++) {
                        if (levels.find(idx)->second.size() > 0 && levels.find(idx)->second.find(i) != levels.find(idx)->second.end()) {
                            val--;
                        }
                    }
                    res = min(res, val);
                }
            }
            return res;
        }
};
```

I just mark every mark in the `<level, marks>` map. But this method has O(n).

But it is too complicated. And then I find a better way to save the space complex.

```
using namespace std;

class Solution {
    public:
        int leastBricks(vector<vector<int> >& wall) {
            int res = wall.size();
            map<int, int> marks;
            for (int level = 0; level < (int)wall.size(); level++) {
                int brickSum = 0;
                for (int idx = 0; idx < (int)wall[level].size() - 1; idx++) {
                    brickSum += wall[level][idx];
                    if (marks.find(brickSum) == marks.end()) {
                        marks.insert(pair<int, int>(brickSum, 1));
                    } else {
                        marks.find(brickSum)->second++;
                    }
                }
            }
            for (auto i : marks) {
                res = min(res, (int)wall.size() - i.second);
            }
            return res;
        }
};
```

It also gets AC. But this solution save more space.
