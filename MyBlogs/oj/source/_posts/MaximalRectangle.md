---
title: Maximal Rectangle
date: 2017-06-17 20:50:12
tags:
    - Array
    - Dynamic Programming
    - Hash Table
    - Stack
---

> Given a 2D binary matrix filled with 0's and 1's, find the largest rectangle containing only 1's and return its area.
>
> For example, given the following matrix:
```
1 0 1 0 0
1 0 1 1 1
1 1 1 1 1
1 0 0 1 0
```
> Return 6.

<!--more-->

This is Leetcode No.85. It is really an interesting problem. You can use two methods to solve this problem.

The first one you can use DFS or some directly-thinking solution.

But I think the method is not elegent.

You can count every one in sub-rectangles, and find whether it equals to the width*height.

The solution is:

```
using namespace std;

class Solution {
    public:
        int maximalRectangle(vector<vector<char> >& matrix) {
            if (matrix.size() == 0 || matrix[0].size() == 0) return 0;
            vector<vector<int> > DP(matrix.size() + 2, vector<int>(matrix[0].size() + 2, 0));
            for (int idx = 1; idx <= (int)matrix.size(); idx++) {
                for (int idy = 1; idy <= (int)matrix[0].size(); idy++) {
                    DP[idx][idy] = DP[idx - 1][idy] + DP[idx][idy - 1] - DP[idx - 1][idy - 1];
                    if (matrix[idx - 1][idy - 1] == '1') {
                        DP[idx][idy]++;
                    }
                }
            }

            int res = 0;
            for (int startIdx = 1; startIdx <= (int)matrix.size(); startIdx++) {
                for (int startIdy = 1; startIdy <= (int)matrix[0].size(); startIdy++) {
                    for (int endIdx = startIdx; endIdx <= (int)matrix.size(); endIdx++) {
                        for (int endIdy = startIdy; endIdy <= (int)matrix[0].size(); endIdy++) {
                            if ((endIdx - startIdx + 1)*(endIdy - startIdy + 1) < res) {
                                continue;
                            }

                            int tmp = DP[endIdx][endIdy] + DP[startIdx - 1][startIdy - 1] - DP[startIdx - 1][endIdy] - DP[endIdx][startIdy - 1];
                            if (tmp == (endIdx - startIdx + 1)*(endIdy - startIdy + 1)) {
                                res = max(res, tmp);
                            } else {
                                break;
                            }
                        }
                    }
                }
            }
            return res;
        }
};
```

Not a fast one, but it gets AC.
