---
title: Longest Line of Consecutive One in Matrix
date: 2017-04-23 20:56:57
tags:
    - Array
    - Dynamic Programming
---

> Given a 01 matrix M, find the longest line of consecutive one in the matrix. The line could be horizontal, vertical, diagonal or anti-diagonal.
>
> Example:
>```
Input:
[
    [0, 1, 1, 0],
    [0, 1, 1, 0],
    [0, 0, 0, 1]
]
Output: 3
```
> Hint: The number of elements in the given matrix will not exceed 10,000.

<!--more-->

It is one problem of LeetCode Weekly Contest 29. You may think in this way that: use tail recursion.

But it must get TLE.

So, we can use DP here. Easy one:

```
using namespace std;

class Solution {
    public:
        int RES;
        int longestLine(vector<vector<int> >& M) {
            vector<vector<int> > DP;
            for (int i = 0; i < (int)M.size(); i++) {
                vector<int> level(M[0].size(), 0);
                DP.push_back(level);
            }

            RES = 0;

            clear(DP, M);
            for (int idx = 0; idx < (int)DP.size(); idx++) {
                for (int idy = 1; idy < (int)DP[0].size(); idy++) {
                    if (M[idx][idy] == 1 && M[idx][idy] == M[idx][idy - 1]) {
                        DP[idx][idy] = 1 + DP[idx][idy - 1];
                        RES = max(RES, DP[idx][idy]);
                    }
                }
            }

            clear(DP, M);
            for (int idx = 1; idx < (int)DP.size(); idx++) {
                for (int idy = 0; idy < (int)DP[0].size(); idy++) {
                    if (M[idx][idy] == 1 && M[idx][idy] == M[idx - 1][idy]) {
                        DP[idx][idy] = 1 + DP[idx - 1][idy];
                        RES = max(RES, DP[idx][idy]);
                    }
                }
            }

            clear(DP, M);
            for (int idx = 1; idx < (int)DP.size(); idx++) {
                for (int idy = 1; idy < (int)DP[0].size(); idy++) {
                    if (M[idx][idy] == 1 && M[idx][idy] == M[idx - 1][idy - 1]) {
                        DP[idx][idy] = 1 + DP[idx - 1][idy - 1];
                        RES = max(RES, DP[idx][idy]);
                    }
                }
            }

            clear(DP, M);
            for (int idx = 1; idx < (int)DP.size(); idx++) {
                for (int idy = 0; idy < (int)DP[0].size() - 1; idy++) {
                    if (M[idx][idy] == 1 && M[idx][idy] == M[idx - 1][idy + 1]) {
                        DP[idx][idy] = 1 + DP[idx - 1][idy + 1];
                        RES = max(RES, DP[idx][idy]);
                    }
                }
            }

            return RES;
        }

        void clear(vector<vector<int> > &DP, vector<vector<int> > &M) {
            for (int i = 0; i < (int)DP.size(); i++) {
                for (int j = 0; j < (int)DP[0].size(); j++) {
                    if (M[i][j] == 1) {
                        if (RES == 0) {
                            RES = 1;
                        }
                        DP[i][j] = 1;
                    } else {
                        DP[i][j] = 0;
                    }
                }
            }
        }
};

```

It gets AC.
