---
title: Best Time to Buy and Sell Stock III
date: 2017-10-26 14:40:08
tags:
    - Dynamic Programming
---

> Say you have an array for which the ith element is the price of a given stock on day i.
>
> Design an algorithm to find the maximum profit. You may complete at most two transactions.
>
> **Note:**
> + You may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
<!--more-->

At first, I think I can use a DP[times][startIdx][endIdx] to represent that the profit you can get when you buy {times} times during {startIdx} day and {endIdx} day.

Then you can get such a code:

```
using namespace std;

class Solution
{
public:

    int _calc(vector<int> &prices, int k)
    {
        vector<vector<vector<int>>> DP(k, vector<vector<int>>(prices.size(), vector<int>(prices.size(), 0)));
        DP[0][0][0] = 0;
        for (int idx = 0; idx < (int)prices.size() - 1; idx++) {
            int res = 0;
            int currentMin = prices[idx], currentMax = prices[idx];
            for (int idy = idx + 1; idy < (int)prices.size(); idy++) {
                currentMax = max(currentMax, prices[idy]);
                if (prices[idy] < currentMin) {
                    currentMin = prices[idy];
                    currentMax = prices[idy];
                } else {
                    res = max(res, currentMax - currentMin);
                    DP[0][idx][idy] = res;
                }
            }
        }

        for (int times = 1; times < k; times++) {
            for (int idx = 1; idx < (int)prices.size() - 1; idx++) {
                for (int idy = idx + 1; idy < (int)prices.size(); idy++) {
                    DP[times][0][idy] =
                        max(DP[times][0][idy],
                            DP[times - 1][0][idx] + DP[0][idx + 1][idy]);
                }
            }
        }

        int res = 0;
        for (int i = 0; i < k; i++) {
            for (int j = 0; j < (int)prices.size(); j++) {
                for (int x = 0; x < (int)prices.size(); x++) {
                    res = max(res, DP[i][j][x]);
                }
            }
        }

        return res;
    }

    int maxProfit(vector<int>& prices)
    {
        if (prices.size() < 2) {
            return 0;
        }
        return _calc(prices, 2);
    }
};
```

But, its space cost is too large O(kn^2). So, it gets a MLE. Then we can quickly find another way:

Here, we use DP_BUY represents that we can get the maxProfit when we buy stock at day idx. DP_SELL respresents that the maxProfit we can get when we sell it on day idx.

Then, we can get the relationship like:
```
/* We must sell it first before buying. */
DP_BUY[k] = max(DP_BUY[k], DP_SELL[k - 1] - price[idx]})
/* We must buy it first before selling. */
DP_SELL[k] = max(DP_SELL[k], DP_BUY[k - 1] + price[idx])
```
Then, the DP_SELL[k] is the answer. The code comes:

```
using namespace std;

class Solution
{
public:

    int _calc(vector<int> &prices, int k)
    {
        vector<int> DP_BUY(k + 1, INT_MIN), DP_SELL(k + 1, 0);
        for (int dayIdx = 0; dayIdx < (int)prices.size(); dayIdx++) {
            for (int times = 1; times <= k; times++) {
                DP_BUY[times] = max(DP_BUY[times], DP_SELL[times - 1] - prices[dayIdx]);
                DP_SELL[times] = max(DP_SELL[times], DP_BUY[times] + prices[dayIdx]);
            }
        }
        return DP_SELL[k];
    }

    int maxProfit(vector<int>& prices)
    {
        if (prices.size() < 2) {
            return 0;
        }
        return _calc(prices, 2);
    }
};
```

It gets AC.
