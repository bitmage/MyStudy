---
title: Coin Change
date: 2017-01-14 13:54:51
tags:
    - Dynamic Programming
---

> You are given coins of different denominations and a total amount of money amount. Write a function to compute the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.
>
> Example 1:
> coins = [1, 2, 5], amount = 11
> return 3 (11 = 5 + 5 + 1)
>
> Example 2:
> coins = [2], amount = 3
> return -1.
>
> Note: You may assume that you have an infinite number of each kind of coin.

<!--more-->

This is Leetcode 322, and it's quite a DP problem, so I first find this solution:
1. use a DP array to store all the result from 0 to amount
2. foreach add the coins to match the amount. for instance, we can find such an example:
```
  --- 2
1 --- 3
  --- 6
  --- 3
2 --- 4
  --- 7
    ...
```
3. So, after all this match we can finally find the result.

So, I write such solution code:

```
class Solution {
    public:
        int coinChange(vector<int>& coins, int amount) {
            sort(coins.begin(), coins.end());
            if (amount == 0) {
                return 0;
            }
            if (coins[0] > amount) {
                return -1;
            }


            vector<long> DP(amount + 1, INT_MAX);
            map<long, set<long> > coinMap;
            long level = 1;
            set<long> zeroN;
            zeroN.insert(0);
            coinMap.insert(pair<long, set<long> >(0, zeroN));
            DP[0] = 0;

            while (DP[amount] == INT_MAX) {
                coinMap.insert(pair<long, set<long> >(level, set<long>()));
                for (int preCoin : coinMap[level - 1]) {
                    for (int coin : coins) {
                        if (preCoin + (long)coin <= (long)amount) {
                            coinMap[level].insert(preCoin + coin);
                            DP[preCoin + coin] = min(DP[preCoin] + 1, DP[coin + preCoin]);
                        } else {
                            break;
                        }
                    }
                }
                if (coinMap[level].size() == 0) {
                    return -1;
                }
                level++;
            }
            return DP[amount];
        }
};
```

But, it gets TLE. So I want to find where I am wrong. I think I use too much unnecessary maps. So I simplfy my code:
```
class Solution {
    public:
        int coinChange(vector<int>& coins, int amount) {
            vector<long> DP(amount + 1, INT_MAX);

            sort(coins.begin(), coins.end());
            if (amount == 0) {
                return 0;
            }
            if (coins[0] > amount) {
                return -1;
            }

            long start = 0;
            long end = 0;

            DP[0] = 0;

            while (start <= amount) {
                for (int pre = start; pre <= end; pre++) {
                    for (int coin : coins) {
                        if ((long)coin + (long)pre <= (long)amount) {
                            DP[coin + pre] = min(DP[pre] + 1, DP[coin + pre]);
                        } else {
                            break;
                        }
                    }
                }
                start = coins[0] + start;
                end = min((long)coins[coins.size() - 1] + (long)end, (long)amount);
            }

            return DP[amount] == INT_MAX ? -1 : DP[amount];
        }
};
```

However it still gets a TLE. Then I realize, how about just change the form of code, use the DP array as the standard:

```
class Solution {
    public:
        int coinChange(vector<int>& coins, int amount) {
            vector<long> DP(amount + 1, INT_MAX);

            sort(coins.begin(), coins.end());
            if (amount == 0) {
                return 0;
            }
            if (coins[0] > amount) {
                return -1;
            }

            DP[0] = 0;
            for (int pre = 1; pre <= amount; pre++) {
                for (int current : coins) {
                    if (pre >= current) {
                        DP[pre] = min(DP[pre - current] + 1, DP[pre]);
                    } else {
                        break;
                    }
                }
            }
            return DP[amount] == INT_MAX ? -1 : DP[amount];
        }
};
```

This solution is as much as the above but its form changed, and its time complex is O(NM), and it gets AC.
