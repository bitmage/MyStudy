---
title: Wildcard Matching
date: 2017-08-13 18:34:18
tags:
    - Dynamic Programming
    - Depth-first Search
---

> Implement wildcard pattern matching with support for '?' and '*'.
>
> + '?' Matches any single character.
> + '*' Matches any sequence of characters (including the empty sequence).
>
> The matching should cover the entire input string (not partial).
>
> The function prototype should be:
> bool isMatch(const char *s, const char *p)
>
> **Some examples:**
```
isMatch("aa","a") ? false
isMatch("aa","aa") ? true
isMatch("aaa","aa") ? false
isMatch("aa", "*") ? true
isMatch("aa", "a*") ? true
isMatch("ab", "?*") ? true
isMatch("aab", "c*a*b") ? false
```

<!--more-->

At first, I think it is a DFS problem, because we can make the check process very clear just like:

```
using namespace std;

class Solution {
    public:
        bool check(string origin, int idx, string needle, int idy) {
            if (idx == (int)origin.length() && idy == (int)needle.length()) {
                return true;
            }

            if (needle[idy] == '?') {
                return check(origin, idx + 1, needle, idy + 1);
            }
            if (needle[idy] == '*') {
                bool res = false;
                for (int i = origin.length() - needle.length() + idy; !res && i >= 0; i--) {
                    res = res || check(origin, i, needle, idy + 1);
                }
                return res;
            } else {
                if (origin[idx] != needle[idy]) {
                    return false;
                } else {
                    return check(origin, idx + 1, needle, idy + 1);
                }
            }
        }

        bool _isMatch(string origin, string p) {
            if (origin.length() == 0 && p.length() == 0) {
                return true;
            }

            string needle = "";
            needle = needle + p[0];
            for (int i = 1; i < (int)p.length(); i++) {
                if (p[i] == '*' && p[i - 1] == '*') {
                    continue;
                } else {
                    needle = needle + p[i];
                }
            }
            return check(origin, 0, needle, 0);
        }
};
```

However, the solution gets a TLE. Because the '*' will make too much time.

So, we find a DP soluiton. using DP[i][j] means string[i ~ end] can be the same as needle[j ~ end].

The solution is:

```
using namespace std;

class Solution {
    public:
        bool isMatch(string origin, string needle) {
            vector<vector<bool>> DP(needle.length() + 1, vector<bool>(origin.length() + 1, false));

            DP[0][0] = true;
            if (needle[0] == '*') {
                for (int i = 0; i <= (int)origin.length(); i++) {
                    DP[0][i] = true;
                }
            }
            for (int idx = 1; idx <= (int)needle.length(); idx++) {
                if (needle[idx - 1] == '*') {
                    int firstIdy = 0;
                    while (DP[idx - 1][firstIdy] == false) {
                        firstIdy++;
                    }
                    for (int i = firstIdy; i <= (int)origin.length(); i++) {
                        DP[idx][i] = true;
                    }
                    continue;
                }
                for (int idy = 1; idy <= (int)origin.length(); idy++) {
                    if (needle[idx - 1] == '?') {
                        DP[idx][idy] = DP[idx - 1][idy - 1] && true;
                    } else {
                        DP[idx][idy] = DP[idx - 1][idy - 1] && (needle[idx - 1] == origin[idy - 1]);
                    }
                }
            }

            return DP[needle.length()][origin.length()];
        }
};
```

It gets AC.
