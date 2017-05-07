---
title: Remove Boxes
date: 2017-05-06 19:57:20
tags:
    - Dynamic Programming
    - Depth-first Search
---

> Given several boxes with different colors represented by different positive numbers.
> You may experience several rounds to remove boxes until there is no box left. Each time you can choose some continuous boxes with the same color (composed of k boxes, k >= 1), remove them and get k*k points.
> Find the maximum points you can get.
>
> Example 1:
```
Input:

[1, 3, 2, 2, 2, 3, 4, 3, 1]

Output:

23

Explanation:

[1, 3, 2, 2, 2, 3, 4, 3, 1]
----> [1, 3, 3, 4, 3, 1] (3*3=9 points)
----> [1, 3, 3, 3, 1] (1*1=1 points)
----> [1, 1] (3*3=9 points)
----> [] (2*2=4 points)
```
> Note: The number of boxes n would not exceed 100.

<!--more-->

This is Leetcode No.546. It is a classic DP problem in some cases.

At first, I just go straightforward, try every possible removal and recursively search the rest. No doubt it will be a TLE answer. Obviously there are a lot of recomputations involved here. Memoization is the key then. But how to design the memory is tricky. I tried to use a string of 0s and 1s to indicate whether the box is removed or not, but still getting TLE.

So, I will not show these solutions code here. I will focus on the final solution.

Think about using a DP[100][100][100] to store the status that from [left] to [right] we have [k] same numbers in the end.

So, we can find the status transition way:

```
DP[left][right][k] = max(DP[left][right][k], DFS(boxes, left, i, k + 1) + DFS(boxes, i + 1, right - 1, 0));
```

Then the result comes:

```
using namespace std;

class Solution {
    public:
        int DP[100][100][100];
        int removeBoxes(vector<int>& boxes) {
            memset(DP, 0, sizeof(DP));

            return DFS(boxes, 0, boxes.size() - 1, 0);
        }

        int DFS(vector<int> boxes, int left, int right, int k) {
            if (left > right) {
                return 0;
            }
            if (DP[left][right][k] != 0) {
                return DP[left][right][k];
            }

            while (right > left && boxes[right] == boxes[right - 1]) {
                right--;
                k++;
            }
            DP[left][right][k] = DFS(boxes, left, right - 1, 0) + (k + 1)*(k + 1);
            for (int i = left; i < right; i++) {
                if (boxes[i] == boxes[right]) {
                    DP[left][right][k] = max(DP[left][right][k], DFS(boxes, left, i, k + 1) + DFS(boxes, i + 1, right - 1, 0));
                }
            }

            return DP[left][right][k];
        }
};
```

It gets AC.
