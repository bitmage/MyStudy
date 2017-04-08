---
title: Diagonal Traverse
date: 2017-02-10 09:50:41
tags:
    - Array
---

> Given a matrix of M x N elements (M rows, N columns), return all elements of the matrix in diagonal order as shown in the below image.
>
> Example:
> + Input:
> ```
[
    [ 1, 2, 3 ],
    [ 4, 5, 6 ],
    [ 7, 8, 9 ]
]
```
> + Output:  [1,2,4,7,5,3,6,8,9]
>
> Note:
> + The total number of elements of the given matrix will not exceed 10,000.

<!--more-->

It is Leetcode 498, and it is not such a problem which needs too much think.

So, here comes the result:

```
class Solution {
    public:
        vector<int> findDiagonalOrder(vector<vector<int> >& matrix) {
            vector<int> res;
            if (matrix.size() == 0 || matrix[0].size() == 0) {
                return res;
            }

            int X = matrix.size();
            int Y = matrix[0].size();

            for (int level = 0; level < X + Y - 1; level++) {
                std::cout << level << std::endl;
                if (level % 2 == 0) {
                    for (int idy = 0; idy <= min(level, Y); idy++) {
                        if (level - idy < X && level - idy >= 0 && idy < Y) {
                            std::cout << level - idy << ':' << idy << std::endl;
                            res.push_back(matrix[level - idy][idy]);
                        }
                    }
                } else {
                    for (int idx = 0; idx <= min(level, X); idx++) {
                        if (level - idx < Y && level - idx >= 0 && idx < X) {
                            std::cout << idx << ':' << level - idx << std::endl;
                            res.push_back(matrix[idx][level - idx]);
                        }
                    }
                }
            }

            return res;
        }
};
```

It gets AC.
