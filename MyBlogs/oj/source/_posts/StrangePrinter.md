---
title: Strange Printer
date: 2017-08-25 16:54:14
tags:
    - Depth-first Search
    - Dynamic Programming
---

> There is a strange printer with the following two special requirements:
> + The printer can only print a sequence of the same character each time.
> + At each turn, the printer can print new characters starting from and ending at any places, and will cover the original existing characters.
>
> Given a string consists of lower English letters only, your job is to count the minimum number of turns the printer needed in order to print it.
>
> **Example 1:**
```
Input: "aaabbb"
Output: 2
Explanation: Print "aaa" first and then print "bbb".
```
> **Example 2:**
```
Input: "aba"
Output: 2
Explanation: Print "aaa" first and then print "b" from the second place of the string, which will cover the existing character 'a'.
```
>  *Hint: Length of the given string will not exceed 100.*


<!--more-->

At first, I think in a wrong way, that I think I should split the string with the character appeared in the first position.

For instance: `tgbtbg` should be split into `gb` and `bg` two parts. But the most effective way is to remove the first `t`, then print g `4` times.

So, I think the most effective way is to find the solution which will lead us to the result.

The result Code is:

```
using namespace std;

class Solution {
public:

    int dfs(string str, int left, int right, vector<vector<int>> &DP) {
        if (left > right) {
            return 0;
        }
        if (DP[left][right]) {
            return DP[left][right];
        }
        DP[left][right] = dfs(str, left, right - 1, DP) + 1;
        for (int i = left; i < right; i++) {
            if (str[i] == str[right]) {
                DP[left][right] = min(DP[left][right], dfs(str, left, i, DP) + dfs(str, i + 1, right - 1, DP));
            }
        }
        return DP[left][right];
    }

    int strangePrinter(string s) {
        vector<vector<int>> DP(s.length() + 1, vector<int>(s.length() + 1, 0));
        return dfs(s, 0, s.length() - 1, DP);
    }
};
```

It get AC.
