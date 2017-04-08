---
title: Longest Increasing Path in a Matrix
date: 2017-01-09 16:15:57
tags:
    - Depth-first Search
    - Memoization
    - Topological sort
---

> Given an integer matrix, find the length of the longest increasing path.
>
> From each cell, you can either move to four directions: left, right, up or down. You may NOT move diagonally or move outside of the boundary (i.e. wrap-around is not allowed).
>
> Example 1:
>
> nums = [ [9,9,4], [6,6,8], [2,1,1] ]
>
> Return 4
> The longest increasing path is [1, 2, 6, 9].
>
> Example 2:
>
> nums = [ [3,4,5], [3,2,6], [2,2,1] ]
>
> Return 4
> The longest increasing path is [3, 4, 5, 6]. Moving diagonally is not allowed.

<!-- more -->

This is Leetcode 329, it's a classic DFS problem. And you can use more space to improve its performance.

For example, you can use two maxDepth array to store the max depth in current position and its direction.

So, its solution will be as following, (we use the build-in dfs function):

```
class Solution {
    public:
        int longestIncreasingPath(vector<vector<int>>& matrix) {
            int rows = matrix.size();
            if (!rows) return 0;
            int cols = matrix[0].size();

            vector<vector<int>> dp(rows, vector<int>(cols, 0));
            std::function<int(int, int)> dfs = [&] (int x, int y) {
                if (dp[x][y]) return dp[x][y];
                vector<vector<int>> dirs = {{-1, 0}, {1, 0}, {0, 1}, {0, -1}};
                for (auto &dir : dirs) {
                    int xx = x + dir[0], yy = y + dir[1];
                    if (xx < 0 || xx >= rows || yy < 0 || yy >= cols) continue;
                    if (matrix[xx][yy] <= matrix[x][y]) continue;
                    dp[x][y] = std::max(dp[x][y], dfs(xx, yy));
                }
                return ++dp[x][y];
            };

            int ret = 0;
            for (int i = 0; i < rows; ++i) {
                for (int j = 0; j < cols; ++j) {
                    ret = std::max(ret, dfs(i, j));
                }
            }

            return ret;
        }
};
```
