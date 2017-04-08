---
title: Longest Palindromic Subsequence
date: 2017-02-22 13:41:22
tags:
    - Dynamic Programming
---


> Given a string s, find the longest palindromic subsequence's length in s. You may assume that the maximum length of s is 1000.
>
> Example 1:
> + Input: "bbbab"
> + Output: 4
> + One possible longest palindromic subsequence is "bbbb".
>
> Example 2:
> + Input: "cbbd"
> + Output: 2
> + One possible longest palindromic subsequence is "bb".

<!--more-->

This is Leetcode No.516. As a DP problem the most important thing is to find out the relationship of the state transformation.

So, here we need to use a DP[idx][idy] to mark the longest palindromic subsequence between idx and idy.

And we can find that:

```
DP[idx][idy] = (str[idx] == str[idy + 1] ? DP[idx + 1][idy - 1] + 2 : max(DP[idx][idy - 1], DP[idx + 1][idy]));
```

So here comes our solution:

```
class Solution {
    public:
        int longestPalindromeSubseq(string str) {
            int DP[1001][1001];
            memset(DP, 0, sizeof(DP));
            for (int idx = str.length() - 1; idx >= 0; idx--) {
                DP[idx][idx] = 1;
                for (int idy = idx + 1; idy < (int)str.length(); idy++) {
                    if (str[idx] == str[idy]) {
                        DP[idx][idy] = DP[idx + 1][idy - 1] + 2;
                    } else {
                        DP[idx][idy] = max(DP[idx + 1][idy], DP[idx][idy - 1]);
                    }
                }
            }
            return DP[0][str.length() - 1];
        }
};
```

It gets AC.
