---
title: 2 Keys Keyboard
date: 2017-07-30 14:16:31
tags:
    - Dynamic Programming
---


> Initially on a notepad only one character 'A' is present. You can perform two operations on this notepad for each step:
>
> + Copy All: You can copy all the characters present on the notepad (partial copy is not allowed).
> + Paste: You can paste the characters which are copied last time.
>
> Given a number n. You have to get exactly n 'A' on the notepad by performing the minimum number of steps permitted. Output the minimum number of steps to get n 'A'.
>
> **Example 1:**
```
Input: 3
Output: 3
Explanation:
    Intitally, we have one character 'A'.
    In step 1, we use Copy All operation.
    In step 2, we use Paste operation to get 'AA'.
    In step 3, we use Paste operation to get 'AAA'.
```
> **Note:**
>
> + The n will be in the range [1, 1000].

<!--more-->

This is a classic DP problem. You should think that what is the relationship between n and n - 1.

So, in this problem, you should find the relationship that DP[n] = min(DP[j] + (i/j), DP[i]), and j is the number which can be divided by i.

For example, 8 can be copy and paste from 4. So, if we do this, the times we need is DP[4] + one copy + (8 / 4 - 1) paste.

Then the code is following:

```
using namespace std;

class Solution {
    public:
        int minSteps(int n) {
            if (n == 1) {
                return 0;
            }
            if (n <= 3) {
                return n;
            }

            vector<int> DP(n + 1, INT_MAX);
            DP[1] = 0;
            DP[2] = 2;
            DP[3] = 3;
            for (int i = 4; i <= n; i++) {
                for (int j = 2; j < i; j++) {
                    if (i % j == 0) {
                        DP[i] = min(DP[j] + (i/j), DP[i]);
                    }
                }
                if (DP[i] == INT_MAX) {
                    DP[i] = min(DP[i], i);
                }
            }
            return DP[n];
        }
};
```

It gets AC.
