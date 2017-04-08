---
title: Best Time to Buy and Sell Stock with Cooldown
date: 2017-02-06 15:44:45
tags:
    - Dynamic Programming
---

> Say you have an array for which the ith element is the price of a given stock on day i.
>
> Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times) with the following restrictions:
>
> + You may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
> + After you sell your stock, you cannot buy stock on next day. (ie, cooldown 1 day)
>
> Example:
> + prices = [1, 2, 3, 0, 2]
> + maxProfit = 3
> + transactions = [buy, sell, cooldown, buy, sell]

<!--more-->

This is Leetcode No.309, and it is a such a DP problem. The important thing is to find the relationship of the condition transition.

First, you can define two status, No.1 is cooldown, No.2 is hold, No.2 is none.

+ When status = 0, you can only do go on.

+ When status = 1, you can sell or hold.

+ When status = 2, you can buy and go on.

So, quickly find the solution:

```
class Solution {
    public:
        int res;
        int maxProfit(vector<int>& prices) {
            res = INT_MIN;

            _calc(prices, 2, 0, 0, 0);

            return res;
        }

        // status: 0 cooldown, 1 hold, 2 none
        void _calc(vector<int> prices, int currentStatus, int currentIdx, int currentProfit, int holdPrice) {
            if (currentProfit > res) {
                res = currentProfit;
            }
            if (currentIdx >= (int)prices.size()) {
                return;
            }
            if (currentStatus == 0) {
                _calc(prices, 2, currentIdx + 1, currentProfit, 0);
            }
            if (currentStatus == 1) {
                // sell if larger than hold
                if (prices[currentIdx] > holdPrice) {
                    _calc(prices, 0, currentIdx + 1, currentProfit + prices[currentIdx] - holdPrice, 0);
                }
                _calc(prices, 1, currentIdx + 1, currentProfit, holdPrice);
            }
            if (currentStatus == 2) {
                _calc(prices, 2, currentIdx + 1, currentProfit, 0);
                _calc(prices, 1, currentIdx + 1, currentProfit, prices[currentIdx]);
            }
        }
};
```

It is right, but it gets TLE. So, it should need a DP improvement.

So, we can use three status array to store the status of current to present our profit.

As, what I say above, we will have three status. So, we can define the DP representation:

+ none[i] = max(none[i - 1], cooldown[i - 1]); // Stay at none, or rest from cooldown
+ hold[i] = max(hold[i - 1], none[i - 1] - prices[i]); // Stay at hold, or buy from none
+ cooldown[i] = hold[i - 1] + prices[i]; // Only one way from hold

So, the initial status is:

+ none[0] = 0;
+ hold[0] = -prices[0];
+ cooldown = 0;

So, the solution is as following:

```
class Solution {
    public:
        int maxProfit(vector<int>& prices){
            if (prices.size() <= 1) return 0;
            vector<int> none(prices.size(), 0);
            vector<int> hold(prices.size(), 0);
            vector<int> cooldown(prices.size(), 0);
            hold[0] = -prices[0];
            none[0] = 0;
            cooldown[0] = INT_MIN;
            for (int i = 1; i < (int)prices.size(); i++) {
                none[i] = max(none[i - 1], cooldown[i - 1]);
                hold[i] = max(hold[i - 1], none[i - 1] - prices[i]);
                cooldown[i] = hold[i - 1] + prices[i];
            }
            return max(none[prices.size() - 1], cooldown[prices.size() - 1]);
        }
};
```

And it gets AC.
