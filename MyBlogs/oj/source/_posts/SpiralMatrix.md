---
title: Spiral Matrix
date: 2017-04-13 22:00:09
tags:
    - Array
---

> Given a matrix of m x n elements (m rows, n columns), return all elements of the matrix in spiral order.
>
> For example,
> Given the following matrix:
>```
[
  [ 1, 2, 3 ],
  [ 4, 5, 6 ],
  [ 7, 8, 9 ]
]
```
> You should return `[1,2,3,6,9,8,7,4,5]`.

<!--more-->

It is Leetcode No.54 and a simple problem. You just need to think over. At first I thought about a tail recursion method to solve the problem. However every tail recursion method can be transform to a while-loop.

So, here I use a while-loop to solve the problem.

```
using namespace std;

class Solution {
    public:
        bool checkIsOk(int idx, int idy, set<pair<int, int> > visited, vector<vector<int> > matrix) {
            if (idx < 0 || idx >= (int)matrix.size() || idy < 0 || idy >= (int)matrix[0].size()) {
                return false;
            }
            if (visited.find(pair<int, int>(idx, idy)) != visited.end()) {
                return false;
            }
            return true;
        }

        vector<int> spiralOrder(vector<vector<int> >& matrix) {
            vector<int> res;
            if (matrix.size() == 0 || matrix[0].size() == 0) {
                return res;
            }

            int idx = 0, idy = 0, direction = 0;
            set<pair<int, int> > visited;

            res.push_back(matrix[0][0]);
            visited.insert(pair<int, int>(0, 0));

            while (visited.size() < matrix.size() * matrix[0].size()) {
                if (direction % 4 == 0) {
                    if (checkIsOk(idx, idy + 1, visited, matrix)) {
                        idy++;
                        visited.insert(pair<int, int>(idx, idy));
                        res.push_back(matrix[idx][idy]);
                    } else {
                        direction++;
                    }
                }
                if (direction % 4 == 1) {
                    if (checkIsOk(idx + 1, idy, visited, matrix)) {
                        idx++;
                        visited.insert(pair<int, int>(idx, idy));
                        res.push_back(matrix[idx][idy]);
                    } else {
                        direction++;
                    }
                }
                if (direction % 4 == 2) {
                    if (checkIsOk(idx, idy - 1, visited, matrix)) {
                        idy--;
                        visited.insert(pair<int, int>(idx, idy));
                        res.push_back(matrix[idx][idy]);
                    } else {
                        direction++;
                    }
                }
                if (direction % 4 == 3) {
                    if (checkIsOk(idx - 1, idy, visited, matrix)) {
                        idx--;
                        visited.insert(pair<int, int>(idx, idy));
                        res.push_back(matrix[idx][idy]);
                    } else {
                        direction++;
                    }
                }
            }
            return res;
        }
};
```

Remember the order of the turning. You should turn to right first and turn down and turn left then up. So, the `direction` use to mark the different directions.

It gets AC.
