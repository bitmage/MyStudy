---
title: Range Sum Query 2D - Immutable
date: 2017-04-12 22:56:50
tags:
    - Dynamic Programming
---


> Given a 2D matrix matrix, find the sum of the elements inside the rectangle defined by its upper left corner (row1, col1) and lower right corner (row2, col2).
>
> Range Sum Query 2D
> The above rectangle (with the red border) is defined by (row1, col1) = (2, 1) and (row2, col2) = (4, 3), which contains sum = 8.
>
> Example:
>```
Given matrix = [
  [3, 0, 1, 4, 2],
  [5, 6, 3, 2, 1],
  [1, 2, 0, 1, 5],
  [4, 1, 0, 1, 7],
  [1, 0, 3, 0, 5]
]

sumRegion(2, 1, 4, 3) -> 8
sumRegion(1, 1, 2, 2) -> 11
sumRegion(1, 2, 2, 4) -> 12
```
> Note:
>
> + You may assume that the matrix does not change.
> + There are many calls to sumRegion function.
> + You may assume that row1 ≤ row2 and col1 ≤ col2.

<!--more-->

This is Leetcode No.304. At first I use a DP map to store the result for each pair of position.

```
#define PI pair<int, int>
#define PPI pair<PI, PI>
#define PPII pair<PPI, int>

using namespace std;

class NumMatrix {
    public:
        map<PPI, int> DP;
        vector<vector<int> > MATRIX;

        NumMatrix(vector<vector<int> > matrix) {
            MATRIX = matrix;
        }

        int sumRegion(int row1, int col1, int row2, int col2) {
            if (DP.find(PPI(PI(row1, col1), PI(row2, col2))) != DP.end()) {
                return DP.find(PPI(PI(row1, col1), PI(row2, col2)))->second;
            }

            if (row1 == row2) {
                int sum = 0;
                for (int idx = col1; idx <= col2; idx++) {
                    sum += MATRIX[row1][idx];
                }
                DP.insert(PPII(PPI(PI(row1, col1), PI(row2, col2)), sum));
                return sum;
            }

            if (col1 == col2) {
                int sum = 0;
                for (int idx = row1; idx <= row2; idx++) {
                    sum += MATRIX[idx][col1];
                }
                DP.insert(PPII(PPI(PI(row1, col1), PI(row2, col2)), sum));
                return sum;
            }

            int sum = 0;
            for (int idx = row1; idx < row2; idx++) {
                sum += MATRIX[idx][col2];
            }
            for (int idx = col1; idx < col2; idx++) {
                sum += MATRIX[row2][idx];
            }
            sum += MATRIX[row2][col2];

            sum += sumRegion(row1, col1, row2 - 1, col2 - 1);

            DP.insert(PPII(PPI(PI(row1, col1), PI(row2, col2)), sum));

            return sum;
        }
};
```

I mark each pair of position as a key. Then use the key to store all the result for the current value. But the solution bring a problem. If the start point is different every time. The DP map will always has to be different. So the DP map will be seldom used.

So, I change the solution. How about think that we just mark every sum so far.

```
SUM[row1 to row2][col1 to col2] = SUM[row2 to 0][col2 to 0] + SUM[row1 to 0][col1 to 0]
                                - SUM[row2 to 0][col1 to 0] + SUM[row1 to 0][col2 to 0]
```

Then the solution is easy to write.

```
using namespace std;

class NumMatrix {
    public:
        vector<vector<int> > DP;
        NumMatrix(vector<vector<int> > &matrix) {
            if (matrix.size() == 0) return;

            DP = vector<vector<int> >(matrix.size() + 1, vector<int>(matrix[0].size() + 1, 0));
            for (int i = 0; i < (int)matrix.size(); ++i) {
                for (int j = 0; j < (int)matrix[0].size(); ++j) {
                    DP[i + 1][j + 1] = matrix[i][j] + DP[i][j + 1] + DP[i + 1][j] -DP[i][j];
                }
            }
        }

        int sumRegion(int row1, int col1, int row2, int col2) {
            return DP[row2 + 1][col2 + 1] - DP[row2 + 1][col1] -DP[row1][col2 + 1] +DP[row1][col1];
        }
};
```

It gets AC.
