---
title: Battleships in a Board
date: 2017-01-05 13:46:25
tags:
    - Simulation
---

> Given an 2D board, count how many different battleships are in it. The battleships are represented with 'X's, empty slots are represented with '.'s. You may assume the following rules:
>
>  + You receive a valid board, made of only battleships or empty slots.
>  + Battleships can only be placed horizontally or vertically. In other words, they can only be made of the shape 1xN (1 row, N columns) or Nx1 (N rows, 1 column), where N can be of any size.
>  + At least one horizontal or vertical cell separates between two battleships - there are no adjacent battleships.
>
> Example:
>
> X..X
> ...X
> ...X
>
> In the above board there are 2 battleships.
>
> Invalid Example:
>
> ...X
> XXXX
> ...X
>
> This is an invalid board that you will not receive - as battleships will always have a cell separating between them.
>
> Follow up:
> Could you do it in one-pass, using only O(1) extra memory and without modifying the value of the board?

<!-- more -->

This is Leetcode 419, and it's easy enough to figure out with simulation way as following:

1. find the first X char, from up to down and left to right.
2. if found, then search up and right, to check whether it is ok.
3. use a global flag to mark if it's good for the result.

This method will use O(n*n) array to mark the visited position, if not it will modify the value of the board to make sure no cell will visit twice.

For example, if we use a visited array to mark the visited cells. the solution will be like these:

```
bool checkShip(vector<vector<char> > &board, int **visited, int idx, int idy) {
    if (visited[idx][idy]) {
        return false;
    }

    bool res = true;
    // check the direction, down
    int currentIdx = idx, currentIdy = idy;
    while (currentIdx < (int)board.size() && currentIdy < (int)board[0].size()) {
        if (board[currentIdx][currentIdy] == 'X') {
            if (currentIdy + 1 < (int)board[0].size() && board[currentIdx][currentIdy + 1] == 'X') {
                res = false;
                break;
            }
            if (currentIdy - 1 >= 0 && board[currentIdx][currentIdy - 1] == 'X') {
                res = false;
                break;
            }
        } else {
            res = true;
            break;
        }
        currentIdx++;
    }
    // check the direction, right
    currentIdx = idx, currentIdy = idy;
    if (!res) {
        res = true;
        while (currentIdx < (int)board.size() && currentIdy < (int)board[0].size()) {
            if (board[currentIdx][currentIdy] == 'X') {
                if (currentIdx + 1 < (int)board.size() && board[currentIdx + 1][currentIdy] == 'X') {
                    res = false;
                    break;
                }
                if (currentIdx - 1 >= 0 && board[currentIdx - 1][currentIdy] == 'X') {
                    res = false;
                    break;
                }
            } else {
                res = true;
                break;
            }
            currentIdy++;
        }
    }
    _visit(board, visited, idx, idy);
    return res;
}

void _visit(vector<vector<char> > &board, int **visited, int idx, int idy) {
    if (idx < 0 || idy < 0|| idx >= (int)board.size() || idy >= (int)board[0].size()) {
        return;
    }
    if (visited[idx][idy]) {
        return;
    }
    if (board[idx][idy] == '.') {
        return;
    }
    visited[idx][idy] = 1;
    _visit(board, visited, idx + 1, idy);
    _visit(board, visited, idx, idy + 1);
    _visit(board, visited, idx - 1, idy);
    _visit(board, visited, idx, idy - 1);
}

int countBattleships(vector<vector<char> >& board) {
    int* visited[board.size()];
    for (int i = 0; i < (int)board.size(); i++) {
        visited[i] = new int[board[0].size()];
        memset(visited[i], 0, sizeof(int) * board[0].size());
    }
    int res = 0;
    for (int idx = 0; idx < (int)board.size(); idx++) {
        for (int idy = 0; idy < (int)board[0].size(); idy++) {
            if (board[idx][idy] == 'X' && checkShip(board, visited, idx, idy)) {
                res++;
            }
        }
    }
    return res;
}
```

But, if we can give up the visited array, just make sure the current cell's left or up have X char to mark it has been visited. It will make sense.

So, we should add these method to replace the former visited array:

```
bool isVisited(vector<vector<char> > &board, int idx, int idy) {
    if (idx == 0 && idy == 0) {
        return false;
    } else if (idx == 0) {
        return board[idx][idy - 1] == 'X';
    } else if (idy == 0) {
        return board[idx - 1][idy] == 'X';
    } else {
        return board[idx - 1][idy] == 'X' || board[idx][idy - 1] == 'X';
    }
}
```
So, the last AC code will like these:

```
class Solution {
    public:
        bool isVisited(vector<vector<char> > &board, int idx, int idy) {
            if (idx == 0 && idy == 0) {
                return false;
            } else if (idx == 0) {
                return board[idx][idy - 1] == 'X';
            } else if (idy == 0) {
                return board[idx - 1][idy] == 'X';
            } else {
                return board[idx - 1][idy] == 'X' || board[idx][idy - 1] == 'X';
            }
        }

        bool checkShip(vector<vector<char> > &board, int idx, int idy) {
            if (isVisited(board, idx, idy)) {
                return false;
            }

            bool res = true;
            // check the direction, down
            int currentIdx = idx, currentIdy = idy;
            while (currentIdx < (int)board.size() && currentIdy < (int)board[0].size()) {
                if (board[currentIdx][currentIdy] == 'X') {
                    if (currentIdy + 1 < (int)board[0].size() && board[currentIdx][currentIdy + 1] == 'X') {
                        res = false;
                        break;
                    }
                    if (currentIdy - 1 >= 0 && board[currentIdx][currentIdy - 1] == 'X') {
                        res = false;
                        break;
                    }
                } else {
                    res = true;
                    break;
                }
                currentIdx++;
            }
            // check the direction, right
            currentIdx = idx, currentIdy = idy;
            if (!res) {
                res = true;
                while (currentIdx < (int)board.size() && currentIdy < (int)board[0].size()) {
                    if (board[currentIdx][currentIdy] == 'X') {
                        if (currentIdx + 1 < (int)board.size() && board[currentIdx + 1][currentIdy] == 'X') {
                            res = false;
                            break;
                        }
                        if (currentIdx - 1 >= 0 && board[currentIdx - 1][currentIdy] == 'X') {
                            res = false;
                            break;
                        }
                    } else {
                        res = true;
                        break;
                    }
                    currentIdy++;
                }
            }
            _visit(board, idx, idy);
            return res;
        }

        void _visit(vector<vector<char> > &board, int idx, int idy) {
            if (idx < 0 || idy < 0|| idx >= (int)board.size() || idy >= (int)board[0].size()) {
                return;
            }
            if (isVisited(board, idx, idy)) {
                return;
            }
            if (board[idx][idy] == '.') {
                return;
            }
            // visited[idx][idy] = 1;
            _visit(board, idx + 1, idy);
            _visit(board, idx, idy + 1);
            _visit(board, idx - 1, idy);
            _visit(board, idx, idy - 1);
        }

        int countBattleships(vector<vector<char> >& board) {
            int res = 0;
            for (int idx = 0; idx < (int)board.size(); idx++) {
                for (int idy = 0; idy < (int)board[0].size(); idy++) {
                    if (board[idx][idy] == 'X' && checkShip(board, idx, idy)) {
                        res++;
                    }
                }
            }
            return res;
        }
};
```
