---
title: Ones and Zeroes
date: 2017-01-20 23:51:54
tags:
    - Dynamic Programming
---

> In the computer world, use restricted resource you have to generate maximum benefit is what we always want to pursue.
>
> For now, suppose you are a dominator of m 0s and n 1s respectively. On the other hand, there is an array with strings consisting of only 0s and 1s.
>
> Now your task is to find the maximum number of strings that you can form with given m 0s and n 1s. Each 0 and 1 can be used at most once.
>
> Note:
> + The given numbers of 0s and 1s will both not exceed 100
> + The size of given string array won't exceed 600.
>
> Example 1:
> + Input: Array = {"10", "0001", "111001", "1", "0"}, m = 5, n = 3;
> + Output: 4
>
> Explanation: This are totally 4 strings can be formed by the using of 5 0s and 3 1s, which are “10,”0001”,”1”,”0”
>
> Example 2:
> + Input: Array = {"10", "0", "1"}, m = 1, n = 1
> + Output: 2
>
> Explanation: You could form "10", but then you'd have nothing left. Better form "0" and "1".

<!-- more -->
This is Leetcode 474. As a noraml DP problem, the most important thing is to find the relationship.

In this case, we can find the relationship:

we can use `m` 0s and `n` 1s to make the max(DP[x][y], DP[x-i][y-j] + 1) as `i` and `j` means how many 1s and 0s of the current num.

What we should do next is to find the `m to x` and `n to y` to make sure we consider every conditions.

So, the solution is coming:

```
class Solution {
    public:
        int findMaxForm(vector<string>& strs, int m, int n) {
            int DP[600][600];
            for (int i = 0; i < 600; i++) {
                for (int j = 0; j < 600; j++) {
                    DP[i][j] = 0;
                }
            }
            for (int i = 0; i < (int)strs.size(); i++) {
                int num0 = 0;
                int num1 = 0;
                for (int j = 0; j < (int)strs[i].length(); j++) {
                    if (strs[i][j] == '0') {
                        num0++;
                    } else {
                        num1++;
                    }
                }

                for (int i = m; i >= num0; i--) {
                    for (int j = n; j >= num1; j--) {
                        DP[i][j] = max(DP[i][j], DP[i-num0][j-num1] + 1);
                    }
                }
            }
            return DP[m][n];
        }
};
```
