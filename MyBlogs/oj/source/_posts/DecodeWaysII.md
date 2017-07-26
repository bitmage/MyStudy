---
title: Decode Ways II
date: 2017-07-26 10:07:57
tags:
    - Dynamic Programming
    - String
---


> A message containing letters from A-Z is being encoded to numbers using the following mapping way:
>
> 'A' -> 1
> 'B' -> 2
> ...
> 'Z' -> 26
>
> Beyond that, now the encoded string can also contain the character '\*', which can be treated as one of the numbers from 1 to 9.
>
> Given the encoded message containing digits and the character '\*', return the total number of ways to decode it.
>
> Also, since the answer may be very large, you should return the output mod 10^9 + 7.
>
> **Example 1:**
```
Input: "*"
Output: 9
Explanation:
    The encoded message can be decoded to the string: "A", "B", "C", "D", "E", "F", "G", "H", "I".
```
> **Example 2:**
```
Input: "1*"
Output: 9 + 9 = 18
```
> **Note:**
> + The length of the input string will fit in range [1, 105].
> + The input string will only contain the character '\*' and digits '0' - '9'.

<!--more-->


This is Leetcode No. 639, I think this is a good problem. Because it is a classic DP problem. You should find the relationship with the status transport.

From the pre-problem, you should know if without the special character '\*', the problem is much easier.

Then I will give my code first:

```
using namespace std;

int MOD = (int)pow(10, 9) + 7;

class Solution {
    public:
        int numDecodings(string str) {
            if (str.length() == 0) {
                return 0;
            }
            if (str.length() == 1) {
                if (str[0] == '*') {
                    return 9;
                } else {
                    return str[0] == '0' ? 0 : 1;
                }
            }

            if (str[0] == '0') {
                return 0;
            }

            vector<long long> DP(str.length() + 1, 1);
            DP[0] = 1;
            if (str[0] == '*') {
                DP[1] = 9;
            } else if (str[0] == '0'){
                DP[1] = 0;
            } else {
                DP[1] = 1;
            }

            for (int i = 1; i < (int)str.length(); i++) {
                if (str[i] == '*') {
                    if (str[i - 1] == '*') {
                        DP[i + 1] = DP[i]*9 + DP[i - 1]*15;
                    } else if (str[i - 1] == '1') {
                        DP[i + 1] = DP[i]*9 + DP[i - 1]*9;
                    } else if (str[i - 1] == '2'){
                        DP[i + 1] = DP[i]*9 + DP[i - 1]*6;
                    } else {
                        DP[i + 1] = DP[i]*9;
                    }
                } else if (str[i] == '0') {
                    if (str[i - 1] == '*') {
                        DP[i + 1] = DP[i - 1]*2;
                    } else if (str[i - 1] == '1') {
                        DP[i + 1] = DP[i - 1];
                    } else if (str[i - 1] == '2'){
                        DP[i + 1] = DP[i - 1];
                    } else {
                        DP[i + 1] = 0;
                    }
                } else if (str[i] <= '6' && str[i] >= '1') {
                    if (str[i - 1] == '*') {
                        DP[i + 1] = DP[i - 1]*2 + DP[i];
                    } else if (str[i - 1] == '0'){
                        DP[i + 1] = DP[i];
                    } else if (str[i - 1] == '1') {
                        DP[i + 1] = DP[i - 1] + DP[i];
                    } else if (str[i - 1] == '2'){
                        DP[i + 1] = DP[i - 1] + DP[i];
                    } else {
                        DP[i + 1] = DP[i];
                    }
                } else if (str[i] >= '7' && str[i] <= '9') {
                    if (str[i - 1] == '*') {
                        DP[i + 1] = DP[i - 1] + DP[i];
                    } else if (str[i - 1] == '0'){
                        DP[i + 1] = DP[i];
                    } else if (str[i - 1] == '1') {
                        DP[i + 1] = DP[i - 1] + DP[i];
                    } else if (str[i - 1] == '2'){
                        DP[i + 1] = DP[i];
                    } else {
                        DP[i + 1] = DP[i];
                    }
                }
                DP[i + 1] = DP[i + 1]%MOD;
            }
            return DP[str.length()];
        }
};
```

I leave all the transition here, so you can easily know how to change the status.

It gets AC.
