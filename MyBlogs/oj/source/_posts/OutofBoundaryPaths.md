---
title: Out of Boundary Paths
date: 2017-05-07 14:07:26
tags:
    - Dynamic Programming
    - Memoization
---

> There's a tree, a squirrel, and several nuts. Positions are represented by the cells in a 2D grid. Your goal is to find the minimal distance for the squirrel to collect all the nuts and put them under the tree one by one. The squirrel can only take at most one nut at one time and can move in four directions - up, down, left and right, to the adjacent cell. The distance is represented by the number of moves.
>
> Example 1:
```
Input:
    Height : 5
    Width : 7
    Tree position : [2,2]
    Squirrel : [4,4]
    Nuts : [[3,0], [2,5]]
Output:
    12
```
> Note:
> + All given positions won't overlap.
> + The squirrel can take at most one nut at one time.
> + The given positions of nuts have no order.
> + Height and width are positive integers. 3 <= height * width <= 10,000.
> + The given positions contain at least one nut, only one tree and one squirrel.

<!--more-->

This is the last problem of Leetcode Contest Weekly 31. And I think it is not a hard problem. Because you can use Memoization solution to solve the problem.

I here use MAP[50][52][52] to store that we can have MAP[steps][idx][idy] to store that how many methods when we are at (idx, idy) walk (steps).

So, we use `3, 3, 3, 0, 0` as an example:

```
steps:0
0 0 0 0 0
0 2 1 2 0
0 1 0 1 0
0 2 1 2 0
0 0 0 0 0

steps:1
0 0 0 0 0
0 2 4 2 0
0 4 4 4 0
0 2 4 2 0
0 0 0 0 0

steps:2
0 0 0 0 0
0 8 8 8 0
0 8 16 8 0
0 8 8 8 0
0 0 0 0 0
```

That's the map that used in this case.

And the result is obvious.

So, the solution comes:

```
using namespace std;

class Solution {
    public:
        long long res, MAP[50][52][52];

        int findPaths(int COL, int ROW, int N, int IDX, int IDY) {
            if (N == 0) { return 0; }

            IDX = IDX + 1;
            IDY = IDY + 1;

            memset(MAP, 0, sizeof(MAP));

            res = 0;

            if (COL == 1 && ROW == 1) {
                MAP[0][1][1] = 4;
            } else if (COL == 1) {
                for (int idy = 1; idy <= ROW; idy++) {
                    MAP[0][1][idy] = 2;
                }
                MAP[0][1][1] = 3;
                MAP[0][1][ROW] = 3;
            } else if (ROW == 1) {
                for (int idx = 1; idx <= COL; idx++) {
                    MAP[0][idx][1] = 2;
                }
                MAP[0][1][1] = 3;
                MAP[0][COL][1] = 3;
            } else {
                for (int idx = 1; idx <= COL; idx++) {
                    MAP[0][idx][1] = 1;
                    MAP[0][idx][ROW] = 1;
                }
                for (int idy = 1; idy <= ROW; idy++) {
                    MAP[0][1][idy] = 1;
                    MAP[0][COL][idy] = 1;
                }
                MAP[0][1][1] = 2;
                MAP[0][1][ROW] = 2;
                MAP[0][COL][1] = 2;
                MAP[0][COL][ROW] = 2;
            }

            for (int level = 1; level < N; level++) {
                for (int idx = 1; idx <= COL; idx++) {
                    for (int idy = 1; idy <= ROW; idy++) {
                        MAP[level][idx][idy] = (MAP[level - 1][idx - 1][idy] + MAP[level - 1][idx + 1][idy]
                            + MAP[level - 1][idx][idy - 1] + MAP[level - 1][idx][idy + 1]) % 1000000007;
                    }
                }
            }

            for (int level = 0; level < N; level++) {
                res = (res + MAP[level][IDX][IDY]) % 1000000007;
            }
            return res;
        }
};
```

It gets AC.
