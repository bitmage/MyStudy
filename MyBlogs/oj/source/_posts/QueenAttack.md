---
title: Queen Attack
date: 2017-04-08 21:12:57
tags:
    - Hash Table
    - Array
---

> **Description**

> There are N queens in an infinite chessboard. We say two queens may attack each other if they are in the same vertical line, horizontal line or diagonal line even if there are other queens sitting between them.
>
> Now given the positions of the queens, find out how many pairs may attack each other?
>
> **Input**
>
> The first line contains an integer N.
>
> Then N lines follow. Each line contains 2 integers Ri and Ci indicating there is a queen in the Ri-th row and Ci-th column.
>
> No two queens share the same position.
>
> + For 80% of the data, 1 <= N <= 1000
> + For 100% of the data, 1 <= N <= 100000, 0 <= Ri, Ci <= 1000000000
>
> **Output**
>
> One integer, the number of pairs may attack each other.
>```
Sample Input
    5
    1 1
    2 2
    3 3
    1 3
    3 1

Sample Output
    10
```

<!--more-->

This is the first problem of [Microsoft 2017 Campus Hiring Contest - April](https://hihocoder.com/contest/mstest2017april).

First I use the double-for loop to check each queen.

```
using namespace std;

int _main() {
    int N;
    vector<pair<int, int> > queens;
    while (cin >> N) {
        queens.clear();
        for (int i = 0; i < N; i++) {
            int idx, idy;
            cin >> idx >> idy;
            queens.push_back(pair<int, int>(idx, idy));
        }

        int res = 0;
        for (int idx = 0; idx < (int)queens.size(); idx++) {
            for (int idy = idx+1; idy < (int)queens.size(); idy++) {
                if ((abs(queens[idx].first - queens[idy].first) == abs(queens[idx].second - queens[idy].second))
                        || (queens[idx].first == queens[idy].first || queens[idx].second == queens[idy].second))
                {
                    res++;
                }
            }
        }
        cout << res << endl;
    }
    return 0;
}
```
This time complex is O(n^2), so it gets TLE, then I try another way to solve this.

```
using namespace std;

int main(int argc, char *argv[]) {
    int N;
    map<int, int> cols;
    map<int, int> rolls;
    map<int, int> diasA;
    map<int, int> diasB;
    while (cin >> N) {
        for (int i = 0; i < N; i++) {
            int idx, idy;
            cin >> idx >> idy;
            if (cols.find(idx) != cols.end()) {
                cols.find(idx)->second++;
            } else {
                cols.insert(pair<int, int>(idx, 1));
            }
            if (rolls.find(idy) != rolls.end()) {
                rolls.find(idy)->second++;
            } else {
                rolls.insert(pair<int, int>(idy, 1));
            }
            int flag = (idy - idx);
            if (diasA.find(flag) != diasA.end()) {
                diasA.find(flag)->second++;
            } else {
                diasA.insert(pair<int, int>(flag, 1));
            }
            flag = (idy + idx);
            if (diasB.find(flag) != diasB.end()) {
                diasB.find(flag)->second++;
            } else {
                diasB.insert(pair<int, int>(flag, 1));
            }
        }
        int res = 0;
        for (auto i : cols) {
            if (i.second >= 2) {
                res += i.second * (i.second - 1) / 2;
            }
        }
        for (auto i : rolls) {
            if (i.second >= 2) {
                res += i.second * (i.second - 1) / 2;
            }
        }
        for (auto i : diasA) {
            if (i.second >= 2) {
                res += i.second * (i.second - 1) / 2;
            }
        }
        for (auto i : diasB) {
            if (i.second >= 2) {
                res += i.second * (i.second - 1) / 2;
            }
        }
        cout << res << endl;
    }
    return 0;
}
```

I use four maps to store the result, and the time complex come down to O(n). It pass all the cases.
