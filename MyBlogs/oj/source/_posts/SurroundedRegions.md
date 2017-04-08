---
title: Surrounded Regions
date: 2017-03-12 14:12:21
tags:
    - Union Find
    - Breadth-first Search
---

> Given a 2D board containing 'X' and 'O' (the letter O), capture all regions surrounded by 'X'.
>
> A region is captured by flipping all 'O's into 'X's in that surrounded region.
>
> For example,
>```
X X X X
X O O X
X X O X
X O X X
```
> After running your function, the board should be:
>```
X X X X
X X X X
X X X X
X O X X
```

<!--more-->

This is Leetcode No.130. It is a easy one. This is my solution:

```
using namespace std;

class Solution {
    public:
        void solve(vector<vector<char> >& board) {
            if (board.size() == 0 || board[0].size() == 0) {
                return;
            }

            for (int idx = 0; idx < (int)board.size(); idx++) {
                if (board[idx][0] == 'O') {
                    visit(board, idx, 0);
                }

                if (board[idx][board[0].size() - 1] == 'O') {
                    visit(board, idx, board[0].size() - 1);
                }
            }

            for (int idy = 0; idy < (int)board[0].size(); idy++) {
                if (board[0][idy] == 'O') {
                    visit(board, 0, idy);
                }

                if (board[board.size() - 1][idy] == 'O') {
                    visit(board, board.size() - 1, idy);
                }
            }

            for (int idx = 0; idx < (int)board.size(); idx++) {
                for (int idy = 0; idy < (int)board[0].size(); idy++) {
                    if (board[idx][idy] == 'O') {
                        board[idx][idy] = 'X';
                    }
                }
            }
            for (int idx = 0; idx < (int)board.size(); idx++) {
                for (int idy = 0; idy < (int)board[0].size(); idy++) {
                    if (board[idx][idy] == 'V') {
                        board[idx][idy] = 'O';
                    }
                }
            }
        }

        void visit(vector<vector<char> > &board, int idx, int idy) {
            if (idx < 0 || idx >= (int)board.size()) {
                return;
            }

            if (idy < 0 || idy >= (int)board[0].size()) {
                return;
            }

            if (board[idx][idy] != 'O') {
                return;
            }

            if (board[idx][idy] == 'O') {
                board[idx][idy] = 'V';
                visit(board, idx + 1, idy);
                visit(board, idx, idy + 1);
                visit(board, idx - 1, idy);
                visit(board, idx , idy - 1);
            }
        }
};
```

Find the 'O' on the border then find the related ones. Mark them with 'V', then mark every remaining 'O' to X, then mark the 'V' to 'O'.

It gets AC.
