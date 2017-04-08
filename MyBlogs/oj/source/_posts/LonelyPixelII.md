---
title: Lonely Pixel II
date: 2017-03-06 13:44:35
tags:
    - Array
    - Depth-first Search
---

> Given a picture consisting of black and white pixels, and a positive integer N, find the number of black pixels located at some specific row R and column C that align with all the following rules:
>
> + Row R and column C both contain exactly N black pixels.
> + For all rows that have a black pixel at column C, they should be exactly the same as row R
>
> The picture is represented by a 2D char array consisting of 'B' and 'W', which means black and white pixels respectively.
>
> Example:
>```
Input:
[
    ['W', 'B', 'W', 'B', 'B', 'W'],
    ['W', 'B', 'W', 'B', 'B', 'W'],
    ['W', 'B', 'W', 'B', 'B', 'W'],
    ['W', 'W', 'B', 'W', 'B', 'W']
]
N = 3
Output: 6
Explanation: All the bold 'B' are the black pixels we need (all 'B's at column 1 and 3).
          0    1    2    3    4    5         column index
    [
0       ['W', 'B', 'W', 'B', 'B', 'W'],
1       ['W', 'B', 'W', 'B', 'B', 'W'],
2       ['W', 'B', 'W', 'B', 'B', 'W'],
3       ['W', 'W', 'B', 'W', 'B', 'W']
    ]
row index

Take 'B' at row R = 0 and column C = 1 as an example:
Rule 1, row R = 0 and column C = 1 both have exactly N = 3 black pixels.
Rule 2, the rows have black pixel at column C = 1 are row 0, row 1 and row 2. They are exactly the same as row R = 0.
```
> Note:
> + The range of width and height of the input 2D array is [1,200].

<!--more-->

This is Leetcode No.533 , and for some reason I miss the time I can submit my answer... So, here is my answer and I don't know whether it is correct...

```
using namespace std;

class Solution {
public:
    int findBlackPixel(vector<vector<char> >& picture, int N) {
        int res = 0;
        for (int idx = 0; idx < (int)picture.size(); idx++) {
            for (int idy = 0; idy < (int)picture[0].size(); idy++) {
                if (picture[idx][idy] == 'B' && check(picture, idx, idy, N)) {
                    res++;
                }
            }
        }
        return res;
    }

    bool check(vector<vector<char> > picture, int idx, int idy, int N) {
        int res = 0;
        for (int i = 0; i < (int)picture.size(); i++) {
            if (picture[idx][i] == 'B') {
                res++;
            }
        }
        if (res != N) {
            return false;
        }
        res = 0;
        for (int i = 0; i < (int)picture[0].size(); i++) {
            if (picture[i][idy] == 'B') {
                res++;
            }
        }
        return res == N;
    }
};
```
