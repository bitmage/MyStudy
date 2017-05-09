---
title: A Box of Coins
date: 2017-05-09 13:00:18
tags:
    - Greedy
    - Dynamic Programming
    - Simulation
---

> **Description**
>
> Little Hi has a box which consists of 2xN cells as illustrated below.
```
 +----+----+----+----+----+----+
 | A1 | A2 | A3 | A4 | .. | AN |
 +----+----+----+----+----+----+
 | B1 | B2 | B3 | B4 | .. | BN |
 +----+----+----+----+----+----+
```
> There are some coins in each cell. For the first row the amounts of coins are A1, A2, ... AN and for the second row the amounts are B1, B2, ... BN.
>
> Each second Little Hi can pick one coin from a cell and put it into an adjacent cell. (Two cells are adjacent if they share a common side. For example, A1 and A2 are adjacent; A1 and B1 are adjacent; A1 and B2 are not adjacent.)
>
> Now Little Hi wants that each cell has equal number of coins by moving the coins. He wants to know the minimum number of seconds he needs to accomplish it.
>
> **Input**
>
> + The first line contains an integer, N. 2 <= N <= 100000
> + Then follows N lines. Each line contains 2 integers Ai and Bi. (0 <= Ai, Bi <= 2000000000)
> + It is guaranteed that the total amount of coins in the box is no more than 2000000000 and is a multiple of 2N.
>
> **Output**
>
> The minimum number of seconds.
>
> **Sample Input**
```
    2
    3 4
    6 7
```
> **Sample Output**
```
    4
```
<!--more-->

This is one of the Microsoft 2017 Campus Hiring Contest - April, and it is also a problem that I can't solve in the online test.

So, here I will write a solution on this problem.

The reason why I write now is that I finished one leetcode prolem, So, I think this may be the same way to solve the problem. However, this problem is much more difficult than I thought.

At first I write this code in the online test:

```
using namespace std;

int coins[2][100002];

int main() {
    int N;
    while (cin >> N) {
        memset(coins, 0, sizeof(coins));
        long long sum = 0;
        for (int idy = 0; idy < N; idy++) {
            cin >> coins[0][idy];
            sum += coins[0][idy];
            cin >> coins[1][idy];
            sum += coins[1][idy];
        }

        long long value = sum / N / 2;
        for (int idx = 0; idx < 2; idx++) {
            for (int idy = 0; idy < N; idy++) {
                coins[idx][idy] -= value;
            }
        }

        long long res = 0;
        for (int idx = 0; idx < 2; idx++) {
            for (int idy = 0; idy < N; idy++) {
                if (coins[idx][idy] >= 0) {
                    continue;
                }

                while (coins[idx][idy] < 0) {
                    for (int x = 0; x < 2; x++) {
                        for (int y = 0; y < N; y++) {
                            if (idx == x && idy == y) {
                                continue;
                            }
                            if (coins[x][y] <= 0) {
                                continue;
                            }

                            if (coins[x][y] > abs(coins[idx][idy])) {
                                res += abs(coins[idx][idy]) * (abs(idx - x) + abs(idy - y));
                                coins[x][y] += coins[idx][idy];
                                coins[idx][idy] = 0;
                            } else {
                                res += abs(coins[x][y]) * (abs(idx - x) + abs(idy - y));
                                coins[idx][idy] += coins[x][y];
                                coins[x][y] = 0;
                            }
                        }
                    }
                }
            }
        }
        cout << res << endl;
    }
    return 0;
}
```

The main idea is to use the cell which has extra coins to the cells nearby. It is a fully simulation solution. But it can't get the right result because I just fill the left-top cell first rather than the most nearby cells.

So, I improve the solution with a Greedy method. Now I start from the left. If the up and down cells have extra coins, send them to the right cells. If the up and down cells don't have enough coins, then borrow from the right cells.

If the number of the total of the coins in two cells is 2*target, then, fill themselves.

So, this is my thought, the code comes:

```
using namespace std;

long long coins[2][100500];
long long UP = 0, DOWN = 1;

int main() {
    freopen("./in.txt","r",stdin);
    long long N;
    while (cin >> N) {
        memset(coins, 0, sizeof(coins));
        long long sum = 0;
        for (int idy = 0; idy < N; idy++) {
            cin >> coins[UP][idy];
            sum += coins[UP][idy];
            cin >> coins[DOWN][idy];
            sum += coins[DOWN][idy];
        }

        long long target = sum / 2 / N;

        long long res = 0;

        // for (int i = 0; i < N; i++) {
            // cout << coins[UP][i] << ' ' << coins[DOWN][i] << endl;
        // }
        // cout << res << endl;
        // cout << endl;

        for (int idx = 0; idx < N; idx++) {
            if (coins[UP][idx] > target) {
                if (coins[DOWN][idx] >= target) {
                    res += coins[UP][idx] - target;
                    res += coins[DOWN][idx] - target;

                    coins[UP][idx + 1]   += coins[UP][idx] - target;
                    coins[DOWN][idx + 1] += coins[DOWN][idx] - target;
                } else if (coins[DOWN][idx] < target) {
                    if (2 * target > coins[DOWN][idx] + coins[UP][idx]) {
                        res += abs(coins[UP][idx] - target);
                        coins[DOWN][idx] += coins[UP][idx] - target;
                        res += abs(coins[DOWN][idx] - target);
                        coins[DOWN][idx + 1] += coins[DOWN][idx] - target;
                    } else {
                        res += abs(coins[DOWN][idx] - target);
                        coins[UP][idx + 1] += coins[UP][idx] + coins[DOWN][idx] - 2 * target;
                        res += coins[UP][idx] + coins[DOWN][idx] - 2 * target;
                    }
                }
            } else if (coins[UP][idx] < target) {
                if (coins[DOWN][idx] > target) {
                    if (2 * target > coins[DOWN][idx] + coins[UP][idx]) {
                        res += abs(coins[DOWN][idx] - target);
                        coins[UP][idx] += coins[DOWN][idx] - target;
                        res += abs(coins[UP][idx] - target);
                        coins[UP][idx + 1] += coins[UP][idx] - target;
                    } else {
                        res += abs(coins[UP][idx] - target);
                        res += coins[DOWN][idx] + coins[UP][idx] - 2 * target;
                        coins[DOWN][idx + 1] += coins[DOWN][idx] + coins[UP][idx] - 2 * target;
                    }
                } else {
                    res += abs(coins[UP][idx] - target);
                    coins[UP][idx + 1] += coins[UP][idx] - target;
                    res += abs(coins[DOWN][idx] - target);
                    coins[DOWN][idx + 1] += coins[DOWN][idx] - target;
                }
            } else {
                res += abs(coins[DOWN][idx] - target);
                coins[DOWN][idx + 1] += coins[DOWN][idx] - target;
            }
            coins[UP][idx] = target;
            coins[DOWN][idx] = target;

            // for (int i = 0; i < N; i++) {
                // cout << coins[UP][i] << ' ' << coins[DOWN][i] << endl;
            // }
            // cout << res << endl;
            // cout << endl;
        }
        cout << res << endl;
    }
    return 0;
}
```

It gets AC.
