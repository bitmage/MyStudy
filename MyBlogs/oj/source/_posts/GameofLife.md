---
title: Game of Life
date: 2017-05-17 23:16:15
tags:
    - Array
    - Simulation
---

> According to the Wikipedia's article: "The Game of Life, also known simply as Life, is a cellular automaton devised by the British mathematician John Horton Conway in 1970."
>
> Given a board with m by n cells, each cell has an initial state live (1) or dead (0). Each cell interacts with its eight neighbors (horizontal, vertical, diagonal) using the following four rules (taken from the above Wikipedia article):
>
> + Any live cell with fewer than two live neighbors dies, as if caused by under-population.
> + Any live cell with two or three live neighbors lives on to the next generation.
> + Any live cell with more than three live neighbors dies, as if by over-population..
> + Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
>
> Write a function to compute the next state (after one update) of the board given its current state.

<!--more-->

This is Leetcode No.289. It is a simulation problem, it has no diffculty to think, what you should pay attention to is the corner case.

So, the solution is simple to write and simple to figure out:

```
using namespace std;

class Solution {
    public:
        int countAround(vector<vector<int> > board, int idx, int idy) {
            int count = 0;
            for (int _idx = idx - 1; _idx <=  idx + 1; _idx++) {
                for (int _idy = idy - 1; _idy <= idy + 1; _idy++) {
                    if (_idx < 0) {
                        continue;
                    }
                    if (_idy < 0) {
                        continue;
                    }
                    if (_idx > (int)board.size() - 1) {
                        continue;
                    }
                    if (_idy > (int)board[0].size() - 1) {
                        continue;
                    }
                    if (idx == _idx && idy == _idy) {
                        continue;
                    }

                    if (board[_idx][_idy] > 0) {
                        count++;
                    }
                }
            }

            return count;
        }

        void gameOfLife(vector<vector<int> >& board) {
            for (int idx = 0; idx < (int)board.size(); idx++) {
                for (int idy = 0; idy < (int)board[0].size(); idy++) {
                    int count = countAround(board, idx, idy) + 1;
                    count = board[idx][idy] ? count : -count;
                    board[idx][idy] = count;
                }
            }

            for (int idx = 0; idx < (int)board.size(); idx++) {
                for (int idy = 0; idy < (int)board[0].size(); idy++) {
                    if (board[idx][idy] > 0) {
                        board[idx][idy] = board[idx][idy] - 1;
                        if (board[idx][idy] < 2) {
                            board[idx][idy] = 0;
                        } else if (board[idx][idy] == 2 || board[idx][idy] == 3) {
                            board[idx][idy] = 1;
                        } else {
                            board[idx][idy] = 0;
                        }
                    } else {
                        board[idx][idy] = board[idx][idy] + 1;
                        if (board[idx][idy] == -3) {
                            board[idx][idy] = 1;
                        } else {
                            board[idx][idy] = 0;
                        }
                    }
                }
            }
        }
};
```

It gets AC.
