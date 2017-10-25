---
title: A Game
date: 2017-10-25 13:14:48
tags:
    - Dynamic Programming
---

> **Description**
>
> Little Hi and Little Ho are playing a game. There is an integer array in front of them. They take turns (Little Ho goes first) to select a number from either the beginning or the end of the array. The number will be added to the selecter's score and then be removed from the array.
>
> Given the array what is the maximum score Little Ho can get? Note that Little Hi is smart and he always uses the optimal strategy.
>
> **Input**
>
> The first line contains an integer N denoting the length of the array. (1 ≤ N ≤ 1000)
>
> The second line contains N integers A1, A2, ... AN, denoting the array. (-1000 ≤ Ai ≤ 1000)
>
> **Output**
>
> Output the maximum score Little Ho can get.
>
> **Example**
```
Sample Input

    4
    -1 0 100 2

Sample Output

    99

```

<!--more-->

At first, you can quickly find the backtracking way to solve this problem:

```
using namespace std;

int solve(vector<int> &cards, int idx, int idy, int flag)
{
    if (flag) {
        if (idx == idy) {
            return cards[idx];
        } else {
            return max(cards[idx] + solve(cards, idx + 1, idy, !flag), cards[idy] + solve(cards, idx, idy - 1, !flag));
        }
    } else {
        if (idx == idy) {
            return 0;
        } else {
            return min(solve(cards, idx + 1, idy, !flag), solve(cards, idx, idy - 1, !flag));
        }
    }
}


int main()
{
    ios::sync_with_stdio(false);
    int n;
    cin >> n;

    vector<int> cards(n);
    for (int i = 0; i < n; i++) {
        cin >> cards[i];
    }

    cout << solve(cards, 0, cards.size() - 1, true) << endl;
    return 0;
}
```

But, you wil get a TLE, because you will calculate the same idx, idy more than once. So, you just need to use your memory to save the data.


```cpp
#define pii pair<int, int>
#define pbii pair<bool, pair<int ,int>>
#define pbiii pair<pair<bool, pair<int ,int>>, int>

using namespace std;

map<pbii, int> DP;

int solve(vector<int> &cards, int idx, int idy, bool flag)
{
    if (DP.find(pbii(flag, pii(idx, idy))) == DP.end()) {
        if (flag) {
            if (idx == idy) {
                return cards[idx];
            } else {
                DP[pbii(flag, pii(idx, idy))] =
                    max(cards[idx] + solve(cards, idx + 1, idy, !flag),
                        cards[idy] + solve(cards, idx, idy - 1, !flag));
            }
        } else {
            if (idx == idy) {
                return 0;
            } else {
                DP[pbii(flag, pii(idx, idy))] =
                    min(solve(cards, idx + 1, idy, !flag),
                        solve(cards, idx, idy - 1, !flag));
            }
        }
    }

    return DP[pbii(flag, pii(idx, idy))];
}

int main()
{
    ios::sync_with_stdio(false);
    int n;
    cin >> n;

    vector<int> cards(n);
    for (int i = 0; i < n; i++) {
        cin >> cards[i];
    }

    cout << solve(cards, 0, cards.size() - 1, true) << endl;
    return 0;
}
```

It gets AC.
