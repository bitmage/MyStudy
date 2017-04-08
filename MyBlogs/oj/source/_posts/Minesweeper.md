---
title: Minesweeper
date: 2017-02-28 09:45:22
tags:
    - Depth-first Search
    - Breadth-first Search
---

> You are given a 2D char matrix representing the game board. 'M' represents an unrevealed mine, 'E' represents an unrevealed empty square, 'B' represents a revealed blank square that has no adjacent (above, below, left, right, and all 4 diagonals) mines, digit ('1' to '8') represents how many mines are adjacent to this revealed square, and finally 'X' represents a revealed mine.
>
> Now given the next click position (row and column indices) among all the unrevealed squares ('M' or 'E'), return the board after revealing this position according to the following rules:
>
>  + If a mine ('M') is revealed, then the game is over - change it to 'X'.
>  + If an empty square ('E') with no adjacent mines is revealed, then change it to revealed blank ('B') and all of its adjacent unrevealed squares should be revealed recursively.
>  + If an empty square ('E') with at least one adjacent mine is revealed, then change it to a digit ('1' to '8') representing the number of adjacent mines.
>  + Return the board when no more squares will be revealed.
>
<!--more-->
>
> Example 1:
>
> Input:
>```
[
    ['E', 'E', 'E', 'E', 'E'],
    ['E', 'E', 'M', 'E', 'E'],
    ['E', 'E', 'E', 'E', 'E'],
    ['E', 'E', 'E', 'E', 'E']
]
```
> Click : [3,0]
>
> Output:
>```
[
    ['B', '1', 'E', '1', 'B'],
    ['B', '1', 'M', '1', 'B'],
    ['B', '1', '1', '1', 'B'],
    ['B', 'B', 'B', 'B', 'B']
]
```
> Example 2:
>
> Input:
>```
[
    ['B', '1', 'E', '1', 'B'],
    ['B', '1', 'M', '1', 'B'],
    ['B', '1', '1', '1', 'B'],
    ['B', 'B', 'B', 'B', 'B']
]
```
> Click : [1,2]
>
> Output:
>```
[
    ['B', '1', 'E', '1', 'B'],
    ['B', '1', 'X', '1', 'B'],
    ['B', '1', '1', '1', 'B'],
    ['B', 'B', 'B', 'B', 'B']
]
```
> Note:
>
>  + The range of the input matrix's height and width is [1,50].
>  + The click position will only be an unrevealed square ('M' or 'E'), which also means the input board contains at least one clickable square.
>  + The input board won't be a stage when game is over (some mines have been revealed).
>  + For simplicity, not mentioned rules should be ignored in this problem. For example, you don't need to reveal all the unrevealed mines when the game is over, consider any cases that you will win the game or flag any squares.

This is Leetcode No.529, and it is really a fun problem. Because you should find the way to discover the mines.

The most important thing is to find the order to do the steps.

1. count the mines around the cell.
2. if the mines is zero, you should check the cells around the cell.
3. then, do 1 until the mines is not zero.

So, the solution is as following:

```
using namespace std;

class Solution {
public:
    vector<vector<char>> updateBoard(vector<vector<char> >& board, vector<int>& click) {
        int idx = click[0];
        int idy = click[1];

        markBoard(idx, idy, board);

        return board;
    }

    void markBoard(int x, int y, vector<vector<char> > &board) {
        if (x < 0 || x >= (int)board.size() || y < 0 || y >= (int)board[0].size()) {
            return;
        }
        if (board[x][y] != 'E' && board[x][y] != 'M') {
            return;
        }
        int num = checkAround(x, y, board);
        if (num == 0) {
            board[x][y] = 'B';
            markBoard(x - 1, y - 1, board);
            markBoard(x - 1, y, board);
            markBoard(x - 1, y + 1, board);
            markBoard(x, y - 1, board);
            markBoard(x, y + 1, board);
            markBoard(x + 1, y - 1, board);
            markBoard(x + 1, y, board);
            markBoard(x + 1, y + 1, board);
        } else if (num == -1) {
            board[x][y] = 'X';
            return;
        } else {
            board[x][y] = '0' + num;
        }
    }

    int checkAround(int x, int y, vector<vector<char> > board) {
        if (board[x][y] == 'M') {
            return -1;
        }
        int num = 0;
        for (int i = -1; i <= 1; i++) {
            int idx = x + i;
            for (int j = -1; j <= 1; j++) {
                int idy = y + j;

                if (idx >= 0 && idx < (int)board.size() && idy >= 0 && idy < (int)board[0].size()) {
                    if (board[idx][idy] == 'M') {
                        num++;
                    }
                }
            }
        }
        return num;
    }
};
```

It gets AC.
