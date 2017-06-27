---
title: K Inverse Pairs Array
date: 2017-06-27 14:21:41
tags:
    - Dynamic Programming
    - Math
---


> Given two integers n and k, find how many different arrays consist of numbers from 1 to n such that there are exactly k inverse pairs.
>
> We define an inverse pair as following: For ith and jth element in the array, if i < j and a[i] > a[j] then it's an inverse pair; Otherwise, it's not.
>
> Since the answer may very large, the answer should be modulo 109 + 7.
>
> **Example 1:**
```
Input: n = 3, k = 0
Output: 1
Explanation:
Only the array [1,2,3] which consists of numbers from 1 to 3 has exactly 0 inverse pair.
```
> **Example 2:**
```
Input: n = 3, k = 1
Output: 2
Explanation:
The array [1,3,2] and [2,1,3] have exactly 1 inverse pair.
```
> **Note:**
> + The integer n is in the range [1, 1000] and k is in the range [0, 1000].

<!--more-->

This is Leetcode No.629. It's also a problem in Leetcode weekly contest. It is really an interesting problem.

Because you need to find the rules in the problem.

For example:

```
  N 0 1 2 3 4
K
0   0 1 1 1 1
1   0 0 1 2 3
2   0 0 0 2 5
3   0 0 0 1 6
4   0 0 0 0 5
```

You can find that Array[N][K] = SUM(Array[N-1][max(0, K-N) ~ K]);

So, you can quickly write the code:

```
public class Solution {
    public int kInversePairs(int n, int k) {
        int[][] dp = new int[n + 1][k + 1];
        for (int i = 1; i <= n; i++) {
            for (int j = 0; j <= k; j++) {
                if (j == 0)
                    dp[i][j] = 1;
                else {
                    for (int p = 0; p <= Math.min(j, i - 1); p++)
                        dp[i][j] = (dp[i][j] + dp[i - 1][j - p]) % 1000000007;
                }
            }
        }
        return dp[n][k];
    }
}
```

But it gets TLE. So you can use a SUM array to store the sum value.

```
using namespace std;

class Solution {
    public:
        unsigned int MOD = 1000000007;
        int kInversePairs(int N, int K) {
            unsigned int DP[1001][1001];
            memset(DP, 0, sizeof(DP));
            for (int i = 0; i <= K; i++) {
                DP[1][i] = 1;
            }
            for (int i = 0; i <= N; i++) {
                DP[i][0] = 1;
            }
            for (int n = 2; n <= N; n++) {
                for (int k = 1; k <= K; k++) {
                    DP[n][k] = (DP[n - 1][k] + MOD - (k - n >= 0 ? DP[n - 1][k - n] : 0) + DP[n][k - 1]) % MOD;
                }
            }
            return (int) (DP[N][K] + MOD - (K > 0 ? DP[N][K - 1] : 0)) % MOD;
        }
};

```

By using `DP[n][k] = (DP[n - 1][k] + MOD - (k - n >= 0 ? DP[n - 1][k - n] : 0) + DP[n][k - 1]) % MOD;` replacing the for loop.

We finally gets AC.
