---
title: Best Time to Buy and Sell Stock IV
date: 2017-08-04 15:56:51
tags:
    - Dynamic Programming
---

> Say you have an array for which the ith element is the price of a given stock on day i.
>
> Design an algorithm to find the maximum profit. You may complete at most k transactions.
>
> **Note:**
> + You may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).

<!--more-->

At first, I think about how to divide the prices into two array just like buyPoints and sellPoints. Then use DFS to solve the problem.

The code is like this:

```
using namespace std;

class Solution {

    public:
        int RES = 0;
        void _process(int remainTimes, vector<int> &sellPoints, int sellIdx, vector<int> &buyPoints, int buyIdx, int currentProfit, vector<int> &prices) {
            RES = max(currentProfit, RES);
            if (remainTimes == 0) {
                return;
            }

            for (int idx = buyIdx; idx < (int)buyPoints.size(); idx++) {
                for (int idy = sellIdx; idy < (int)sellPoints.size(); idy++) {
                    if (sellPoints[idy] < buyPoints[idx]) {
                        continue;
                    }
                    if (remainTimes == 1 && idy < (int)sellPoints.size() - 1 && prices[sellPoints[idy]] < prices[sellPoints[idy + 1]]) {
                        continue;
                    }
                    for (int nextBuyIdx = idx + 1; nextBuyIdx < (int)buyPoints.size(); nextBuyIdx++) {
                        if (buyPoints[nextBuyIdx] < sellPoints[idy]) {
                            continue;
                        }
                        _process(remainTimes - 1, sellPoints, idy + 1, buyPoints, nextBuyIdx, currentProfit + (prices[sellPoints[idy]] - prices[buyPoints[idx]]), prices);
                        break;
                    }
                    _process(0, sellPoints, idy + 1, buyPoints, 0, currentProfit + (prices[sellPoints[idy]] - prices[buyPoints[idx]]), prices);
                }
            }
        }

        int maxProfit(int k, vector<int>& prices) {
            if (prices.size() < 2) {
                return 0;
            }
            vector<int> buyPoints, sellPoints;
            if (prices[1] > prices[0]) {
                buyPoints.push_back(0);
            }
            for (int i = 1; i < (int)prices.size() - 1; i++) {
                if (prices[i - 1] >= prices[i] && prices[i] < prices[i + 1]) {
                    buyPoints.push_back(i);
                } else if (prices[i - 1] > prices[i] && prices[i] <= prices[i + 1]) {
                    buyPoints.push_back(i);
                }
                if (prices[i - 1] <= prices[i] && prices[i] > prices[i + 1]) {
                    sellPoints.push_back(i);
                } else if (prices[i - 1] < prices[i] && prices[i] >= prices[i + 1]) {
                    sellPoints.push_back(i);
                }
            }
            if (prices[prices.size() - 1] > prices[prices.size() - 2]) {
                sellPoints.push_back(prices.size() - 1);
            }

            _process(k, sellPoints, 0, buyPoints, 0, 0, prices);
            return RES;
        }
};
```

But the time complexity is almost O(n^2), I don't think it is a good solution.

So, I try to find another solution much faster.

Then comes a DP solution:


+ dp[i, j] represents the max profit up until prices[j] using at most i transactions.
+ dp[i, j] = max(dp[i, j-1], prices[j] - prices[jj] + dp[i-1, jj]) { jj in range of [0, j-1] } = max(dp[i, j-1], prices[j] + max(dp[i-1, jj] - prices[jj]))

```
public class Solution {
    public int maxProfit(int k, int[] prices) {
        int n = prices.length;
        if (n <= 1)
            return 0;

        if (k >=  n/2) {
            int maxPro = 0;
            for (int i = 1; i < n; i++) {
                if (prices[i] > prices[i-1])
                    maxPro += prices[i] - prices[i-1];
            }
            return maxPro;
        }

        int[][] dp = new int[k+1][n];
        for (int i = 1; i <= k; i++) {
            int localMax = dp[i-1][0] - prices[0];
            for (int j = 1; j < n; j++) {
                dp[i][j] = Math.max(dp[i][j-1],  prices[j] + localMax);
                localMax = Math.max(localMax, dp[i-1][j] - prices[j]);
            }
        }
        return dp[k][n-1];
    }
}
```

So, It gets AC.
