---
title: 01 Matrix
date: 2017-03-21 10:44:42
tags:
    - Depth-first Search
    - Breadth-first Search
---

> Given a matrix consists of 0 and 1, find the distance of the nearest 0 for each cell.
> The distance between two adjacent cells is 1.
>
> Example 1:
>
> ```
Input:
0 0 0
0 1 0
0 0 0
Output:
0 0 0
0 1 0
0 0 0
```
> Example 2:
>
> ```
Input:
0 0 0
0 1 0
1 1 1
Output:
0 0 0
0 1 0
1 2 1
```
> Note:
>  + The number of elements of the given matrix will not exceed 10,000.
>  + There are at least one 0 in the given matrix.
>  + The cells are adjacent in only four directions: up, down, left and right.

<!--more-->

This is Leetcode No.542. It is a common problem of Searching. I think it is better to use breadth-first search rather than depth-first search.

Here is my first code:

```
using namespace std;

class Solution {
    public:
        vector<vector<int> > updateMatrix(vector<vector<int> >& matrix) {
            vector<vector<int> > res;
            for (int idx = 0; idx < (int)matrix.size(); idx++) {
                vector<int> level(matrix[0].size());
                res.push_back(level);
            }

            for (int idx = 0; idx < (int)matrix.size(); idx++) {
                for (int idy = 0; idy < (int)matrix[0].size(); idy++) {
                    res[idx][idy] = check(matrix, idx, idy, 0);
                }
            }

            return res;
        }

        int check(vector<vector<int> > matrix, int idx, int idy, int current) {
            if (idx < 0 || idx >= (int)matrix.size()) {
                return INT_MAX;
            }
            if (idy < 0 || idy >= (int)matrix[0].size()) {
                return INT_MAX;
            }

            if (matrix[idx][idy] == 0) {
                return current;
            } else {
                return min(
                        min(check(matrix, idx - 1, idy, current + 1), check(matrix, idx, idy - 1, current + 1)),
                        min(check(matrix, idx + 1, idy, current + 1), check(matrix, idx, idy + 1, current + 1))
                        );
            }

        }
};
```

Easy to understand, but there are some problems, for example the visited cell will be visited twice. So I add the visited array to mark the visited cells.

```
using namespace std;

class Solution {
    public:
        vector<vector<int> > updateMatrix(vector<vector<int> >& matrix) {
            vector<vector<int> > res;
            for (int idx = 0; idx < (int)matrix.size(); idx++) {
                vector<int> level(matrix[0].size());
                res.push_back(level);
            }

            vector<vector<int> > visited;
            for (int idx = 0; idx < (int)matrix.size(); idx++) {
                vector<int> level(matrix[0].size());
                visited.push_back(level);
            }

            for (int idx = 0; idx < (int)matrix.size(); idx++) {
                for (int idy = 0; idy < (int)matrix[0].size(); idy++) {
                    clearVisited(visited);
                    res[idx][idy] = check(matrix, idx, idy, 0L, visited);
                    cout << idx << ':' << idy << '=' << res[idx][idy] << endl;
                }
            }
            return res;
        }

        void clearVisited(vector<vector<int> > &visited) {
            for (int idx = 0; idx < (int)visited.size(); idx++) {
                for (int idy = 0; idy < (int)visited[0].size(); idy++) {
                    visited[idx][idy] = 0;
                }
            }
        }

        int check(vector<vector<int> > matrix, int idx, int idy, long current, vector<vector<int> > &visited) {
            if (idx < 0 || idx >= (int)matrix.size()) {
                return INT_MAX;
            }
            if (idy < 0 || idy >= (int)matrix[0].size()) {
                return INT_MAX;
            }
            if (visited[idx][idy] == 1) {
                return INT_MAX;
            } else {
                visited[idx][idy] = 1;
            }

            if (matrix[idx][idy] == 0) {
                return current;
            } else {
                long res = min(
                        min(check(matrix, idx - 1, idy, current + 1, visited),
                            check(matrix, idx, idy - 1, current + 1, visited)),
                        min(check(matrix, idx + 1, idy, current + 1, visited),
                            check(matrix, idx, idy + 1, current + 1, visited))
                        );
                visited[idx][idy] = 0;
                return res;
            }
        }
};
```

But it get a TLE, because the same cell will be counted more than once. So I have to figure out some more solutions.

You may think about a DP or memerized method based on BFS or DFS.

However, you can find another better way to solve the problem.

0. mark all cells expect 0 to INT_MAX.
1. find all the 0 cell.
2. find all neighbours around this 0 cell and mark them 1.
3. then find all the 1 cell and do No.1 step.

The time complex is O(n).

And the solution is like these:

```
using namespace std;

class Solution {
    public:
        vector<vector<int> > updateMatrix(vector<vector<int> >& matrix) {
            int remain = 0;
            for (int idx = 0; idx < (int)matrix.size(); idx++) {
                for (int idy = 0; idy < (int)matrix[0].size(); idy++) {
                    if (matrix[idx][idy] != 0) {
                        matrix[idx][idy] = INT_MAX;
                        remain++;
                    }
                }
            }
            int flag = 1;
            do {
                for (int idx = 0; idx < (int)matrix.size(); idx++) {
                    for (int idy = 0; idy < (int)matrix[0].size(); idy++) {
                        if (matrix[idx][idy] == flag - 1) {
                            if (idx - 1 >= 0 && matrix[idx - 1][idy] == INT_MAX) {
                                matrix[idx - 1][idy] = flag;
                                remain--;
                            }
                            if (idx + 1 < (int)matrix.size() && matrix[idx + 1][idy] == INT_MAX) {
                                matrix[idx + 1][idy] = flag;
                                remain--;
                            }
                            if (idy - 1 >= 0 && matrix[idx][idy - 1] == INT_MAX) {
                                matrix[idx][idy - 1] = flag;
                                remain--;
                            }
                            if (idy + 1 < (int)matrix[0].size() && matrix[idx][idy + 1] == INT_MAX) {
                                matrix[idx][idy + 1] = flag;
                                remain--;
                            }
                        }
                    }
                }
                flag++;
            } while (remain > 0);

            return matrix;
        }
};
```

It gets AC.
