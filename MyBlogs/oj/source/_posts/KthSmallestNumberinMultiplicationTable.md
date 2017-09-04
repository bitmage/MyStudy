---
title: Kth Smallest Number in Multiplication Table
date: 2017-09-04 14:18:00
tags:
    - Binary Search
    - Math
---


> Nearly every one have used the Multiplication Table. But could you find out the k-th smallest number quickly from the multiplication table?
>
> Given the height m and the length n of a m * n Multiplication Table, and a positive integer k, you need to return the k-th smallest number in this table.
>
> **Example 1:**
```
Input: m = 3, n = 3, k = 5
Output:
Explanation:
The Multiplication Table:
1	2	3
2	4	6
3	6	9

The 5-th smallest number is 3 (1, 2, 2, 3, 3).
```
> **Example 2:**
```
Input: m = 2, n = 3, k = 6
Output:
Explanation:
The Multiplication Table:
1	2	3
2	4	6

The 6-th smallest number is 6 (1, 2, 2, 3, 4, 6).
```
> **Note:**
>
> + The m and n will be in the range [1, 30000].
> + The k will be in the range [1, m * n]

<!--more-->

This is a simple problem, the most important is to know how to count the index of the number.

As we know that the table value is simple, i from 1 to n and j from 1 to m.

So, we can count the index of a number.

```
int count(int value, int m, int n) {
    int i = m, j = 1;
    int count = 0;
    while (i >= 1 && j <= n) {
        if (i * j <= value) {
            count += i;
            j++;
        } else {
            i--;
        }
    }
    return count;
}
```

Then, the solution is:

```
using namespace std;

class Solution {
public:
    int findKthNumber(int m, int n, int k) {
        int left = 1*1;
        int right = m*n;

        while (left < right) {
            int mid = left + (right - left)/2;

            if (count(mid, m, n) < k) {
                left = mid + 1;
            } else {
                right = mid;
            }
        }

        return right;
    }

    int count(int value, int m, int n) {
        int i = m, j = 1;
        int count = 0;
        while (i >= 1 && j <= n) {
            if (i * j <= value) {
                count += i;
                j++;
            } else {
                i--;
            }
        }
        return count;
    }
};
```

It gets AC.
