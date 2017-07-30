---
title: 4 Keys Keyboard
date: 2017-07-30 14:22:38
tags:
    - Dynamic Programming
---


> Imagine you have a special keyboard with the following keys:
>
> + Key 1: (A): Prints one 'A' on screen.
> + Key 2: (Ctrl-A): Select the whole screen.
> + Key 3: (Ctrl-C): Copy selection to buffer.
> + Key 4: (Ctrl-V): Print buffer on screen appending it after what has already been printed.
>
> Now, you can only press the keyboard for N times (with the above four keys), find out the maximum numbers of 'A' you can print on screen.
>
> **Example 1:**
```
Input: N = 3
Output: 3
Explanation:
    We can at most get 3 A's on screen by pressing following key sequence:
    A, A, A
```
> **Example 2:**
```
Input: N = 7
Output: 9
Explanation:
    We can at most get 9 A's on screen by pressing following key sequence:
    A, A, A, Ctrl A, Ctrl C, Ctrl V, Ctrl V
```
> **Note:**
>
> + 1 <= N <= 50
> + Answers will be in the range of 32-bit signed integer.

<!--more-->

This problem is much similiar as the former one. The key is to change our mind.

That, the most important is that we should find the relationship: `DP[i] = max(DP[i - j - 2]*(j + 1), DP[i])`.

Because we should do one select and one copy and paste, which should be the most.

The Answer is:

```
using namespace std;

class Solution {
    public:
        int maxA(int N) {
            vector<int> DP(50 + 1, INT_MIN);
            DP[0] = 0;
            DP[1] = 1;
            DP[2] = 2;
            DP[3] = 3;

            for (int i = 4; i <= N; i++) {
                DP[i] = max(DP[i], i);
                for (int j = 1; j < i; j++) {
                    DP[i] = max(DP[i - j - 2] * (j + 1), DP[i]);
                }
            }

            // for (int i = 1; i <= N; i++) {
                // cout << i << ' ' << DP[i] << endl;
            // }

            return DP[N];
        }
};
```

It gets AC.
