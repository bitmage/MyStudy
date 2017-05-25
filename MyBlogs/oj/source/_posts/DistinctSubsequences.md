---
title: Distinct Subsequences
date: 2017-05-25 12:31:21
tags:
    - String
    - Dynamic Programming
---

> Given a string S and a string T, count the number of distinct subsequences of T in S.
>
> A subsequence of a string is a new string which is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (ie, "ACE" is a subsequence of "ABCDE" while "AEC" is not).
>
> Here is an example:
```
S = "rabbbit", T = "rabbit"

Return 3.
```

<!--more-->

This is Leetcode No.115. You can quickly find the BF solution.

```
using namespace std;

class Solution {
    public:
        int res;
        int numDistinct(string src, string tar) {
            res = 0;
            check(src, tar, 0, 0);
            return res;
        }

        void check(string src, string tar, int srcIdx, int tarIdx) {
            if (tarIdx == (int)tar.length()) {
                res++;
                return;
            }
            for (int idx = srcIdx; idx < (int)src.length(); idx++) {
                if (src[idx] == tar[tarIdx]) {
                    check(src, tar, idx + 1, tarIdx + 1);
                }
            }
        }
};
```

The most important thing is to reduce the comparation times. So, you can think about this problem with another way.

Just like how many ways to reach the end. use "rabbbit" and "rabbit" as a example:

```
The first Path:

    r a b b b i t
  r 1 0 0 0 0 0 0
  a 0 1 0 0 0 0 0
  b 0 0 1 1 1 0 0
  b 0 0 1 1 1 0 0
  i 0 0 0 0 0 1 0
  t 0 0 0 0 0 0 1
The result:
    r a b b b i t
  r 1 0 0 0 0 0 0
  a 0 1 0 0 0 0 0
  b 0 0 1 1 1 0 0
  b 0 0 1 2 3 0 0
  i 0 0 0 0 0 3 0
  t 0 0 0 0 0 0 3
```

That, we find the question become to the "how many ways to reach the end";

Then the result becomes:

```
using namespace std;

class Solution {
    public:
        int res;
        int numDistinct(string src, string tar) {
            if (tar.length() > src.length()) {
                return 0;
            }

            vector<vector<int> > DP(tar.length() + 1, vector<int>(src.length() + 1, 0));

            for (int i = 0; i < (int)DP[0].size(); i++) {
                DP[0][i] = 1;
            }

            for (int idx = 1; idx < (int)DP.size(); idx++) {
                for (int idy = 1; idy < (int)DP[0].size(); idy++) {
                    if (tar[idx - 1] == src[idy - 1]) {
                        DP[idx][idy] = DP[idx][idy - 1] + DP[idx - 1][idy - 1];
                    } else {
                        DP[idx][idy] = DP[idx][idy - 1];
                    }
                }
            }

            return DP[tar.size()][src.size()];
        }
};
```

It gets AC.
