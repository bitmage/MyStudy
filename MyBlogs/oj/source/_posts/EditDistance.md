---
title: Edit Distance
date: 2017-05-04 12:50:34
tags:
    - String
    - Dynamic Programming
---

> Given two words source and target, find the minimum number of steps required to convert source to target. (each operation is counted as 1 step.)
>
> You have the following 3 operations permitted on a word:
>
> 1. ) Insert a character
> 2. ) Delete a character
> 3. ) Replace a character

<!--more-->

This is Leetcode No.72. It is an old problem and I think it is a classic combination of DP and String.

You can quickly find a DFS solution. For example you can just use these faker code block:

```
minDistance(source, target):
    return min(replace(idx, source, target), delete(idx, source, target), insert(idx, source, target))
```

To find the min value of the transtaion. But its time cost is too large to pass the judgement.

It must be some better solutions to solve this problem.

Then I figure out a DP solution. Using the DP[n][m] to mark the distance.

Use `abcdef` and `bfdef` as a example.

```
    a b c d e f
1     b       f
2     b   d e f
```

We can have such a map of the differnce between the two string. Then we can use the No.2 as the result. Then we find that the transformation is that we just need to add once and replace once. So the result is 2.

But the time cost is still high. Because the single comparation is O(mn). The solution still can't pass.

Then I figure out a DP solution:

```
using namespace std;

class Solution {
    public:
        int minDistance(string source, string target) {
            if (source.length() == 0) {
                return target.length();
            }
            if (target.length() == 0) {
                return source.length();
            }

            string LONG  = source.length() > target.length() ? source : target;
            string SHORT = source.length() > target.length() ? target : source;

            vector<vector<int> > DP;
            for (int idx = 0; idx < (int)SHORT.size(); idx++) {
                vector<int> level(LONG.length(), -1);
                DP.push_back(level);
            }

            for (int idx = 0; idx < (int)SHORT.length(); idx++) {
                for (int idy = 0; idy < (int)LONG.length(); idy++) {
                    if (SHORT[idx] == LONG[idy]) {
                        DP[idx][idy] = idx;
                    }
                }
            }

            for (int idy = 0; idy < (int)LONG.length(); idy++) {
                for (int idx = 0; idx < (int)SHORT.length(); idx++) {
                    DP[SHORT.length() - 1][idy] = max(DP[idx][idy], DP[SHORT.length() - 1][idy]);
                }
            }

            vector<int> RES(SHORT.length(), 0);
            for (int idx = 0; idx < (int)LONG.length(); idx++) {
                if (DP[SHORT.length() - 1][idx] > 0) {
                    if (DP[SHORT.length() - 1][idx] == 0) {
                        RES[DP[SHORT.length() - 1][idx]] = 1;
                    } else {
                        RES[DP[SHORT.length() - 1][idx]] = RES[DP[SHORT.length() - 1][idx] - 1] + 1;
                    }
                    for (int idy = DP[SHORT.length() - 1][idx] + 1; idy < (int)SHORT.length(); idy++) {
                        RES[idy] = max(RES[idy], RES[DP[SHORT.length() - 1][idx]] + 1);
                    }
                }
            }

            return LONG.size() - RES[SHORT.length() - 1];
        }
};
```

But it sucked in a corner case that short string has the many same character. For example 'fff'.

Then I tried to think another way.

We define the state DP[i][j] to be the minimum number of operations to convert source[0..i - 1] to target[0..j - 1]. The state equations have two cases: the boundary case and the general case. Note that in the above notations, both i and j take values starting from 1.

For the boundary case, that is, to convert a string to an empty string, it is easy to see that the mininum number of operations to convert source[0..i - 1] to "" requires at least i operations (deletions). In fact, the boundary case is simply:

 + DP[i][0] = i;
 + DP[0][j] = j.

Now let's move on to the general case, that is, convert a non-empty source[0..i - 1] to another non-empty target[0..j - 1]. Well, let's try to break this problem down into smaller problems (sub-problems). Suppose we have already known how to convert source[0..i - 2] to target[0..j - 2], which is DP[i - 1][j - 1]. Now let's consider word[i - 1] and target[j - 1]. If they are euqal, then no more operation is needed and DP[i][j] = DP[i - 1][j - 1]. Well, what if they are not equal?

If they are not equal, we need to consider three cases:

 + Replace source[i - 1] by target[j - 1] (DP[i][j] = DP[i - 1][j - 1] + 1 (for replacement));
 + Delete source[i - 1] and source[0..i - 2] = target[0..j - 1] (DP[i][j] = DP[i - 1][j] + 1 (for deletion));
 + Insert target[j - 1] to source[0..i - 1] and source[0..i - 1] + target[j - 1] = target[0..j - 1] (DP[i][j] = DP[i][j - 1] + 1 (for insertion)).

Make sure you understand the subtle differences between the equations for deletion and insertion. For deletion, we are actually converting source[0..i - 2] to target[0..j - 1], which costs DP[i - 1][j], and then deleting the source[i - 1], which costs 1. The case is similar for insertion.

Putting these together, we now have:

 + DP[i][0] = i;
 + DP[0][j] = j;
 + DP[i][j] = DP[i - 1][j - 1], if source[i - 1] = target[j - 1];
 + DP[i][j] = min(DP[i - 1][j - 1] + 1, DP[i - 1][j] + 1, DP[i][j - 1] + 1), otherwise.

The above state equations can be turned into the following code directly.

```
using namespace std;

class Solution {
    public:
        int minDistance(string source, string target) {
            int m = source.length(), n = target.length();
            vector<vector<int> > DP(m + 1, vector<int> (n + 1, 0));
            for (int i = 1; i <= m; i++)
                DP[i][0] = i;
            for (int j = 1; j <= n; j++)
                DP[0][j] = j;
            for (int i = 1; i <= m; i++) {
                for (int j = 1; j <= n; j++) {
                    if (source[i - 1] == target[j - 1])
                        DP[i][j] = DP[i - 1][j - 1];
                    else DP[i][j] = min(DP[i - 1][j - 1] + 1, min(DP[i][j - 1] + 1, DP[i - 1][j] + 1));
                }
            }
            return DP[m][n];
        }
};
```

It gets AC.
