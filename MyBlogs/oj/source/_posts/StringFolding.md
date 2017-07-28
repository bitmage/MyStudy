---
title: String Folding
date: 2017-07-29 00:10:20
tags:
    - Dynamic Programming
    - String
---

> **Description**
>
> Little Hi wants to compress a string consisting of only capital letters 'A'-'Z'. He folds the string like this: if a substring S appears consectively for X times he represents them by 'X(S)'. For example AAAAAAAAAABABABCCD can be represented by 10(A)2(BA)B2(C)D.
>
> Moreover this kind of folding compression can be applied recursively. For example HIHOHIHOCODERHIHOHIHOCODER can be represented by 2(2(HIHO)CODER).
>
> Given a string S there are multiple valid compression ways. For example AAAAAAAAAABABABCCD can also be represented by 9(A)3(AB)CCD. Little Hi wants to know the length of the shortest representation.
>
> **Input**
>
> The first line contains an integer T ( 1 ≤ T ≤ 10 ), the number of test cases.
>
> Then follows T lines. Each line contains a string S of length no more than 100, consisting of capital letters.
>
> **Output**
>
> For each test case output the length of the shortest representation.
>
> **Sample Input**
```
    3
    ABC
    AAAAAAAAAABABABCCD
    HIHOHIHOCODERHIHOHIHOCODER
```
> **Sample Output**
```
    3
    12
    15
```

<!--more-->

This is Hihocode week 160. It is a classic DP problem.

The key to solve this problem is to understand that we can use func(i ~ j) means the shortest block of the string[i to j].

func(i ~ j) = func(i ~ k) + func(k + 1, j)

But if str[i to k] can form string[k + 1, j], we can shorten the string to (n)str[i to k].

So, here comes the result:

```
using namespace std;

int countLen(int num) {
    if (num < 10) {
        return 1;
    }
    if (num < 100) {
        return 2;
    }
    return 3;
}

bool check(string str, int left, int right, int len) {
    if ((right - left + 1) % len != 0) {
        return false;
    }
    for (int idx = left; idx < right; idx = idx + len) {
        for (int idy = 0; idy + idx + len <= right; idy++) {
            if (str[idx + idy] != str[idx + idy + len]) {
                return false;
            }
        }
    }
    return true;
}

int DFS(string str, int left, int right, vector<vector<int> > &DP) {
    if (DP[left][right]) {
        return DP[left][right];
    }

    if (left == right) {
        DP[left][right] = 1;
    } else {
        for (int len = 1; len < right - left + 1; len++) {

            if (!DP[left][right]) {
                DP[left][right] = min(right - left + 1, DFS(str, left, left + len - 1, DP) + DFS(str, left + len, right, DP));
            } else {
                DP[left][right] = min(DP[left][right], DFS(str, left, left + len - 1, DP) + DFS(str, left + len, right, DP));
            }

            if (check(str, left, right, len)) {
                DP[left][right] = min(DP[left][right], countLen((right - left + 1)/len) + 2 + DP[left][left + len - 1]);
            }
        }
    }
    return DP[left][right];
}

int main() {
    // freopen("./Week160.txt", "r", stdin);
    int T;
    while (cin >> T) {
        for (int i = 0; i < T; i++) {
            string str;
            cin >> str;

            vector<vector<int> > DP(str.length(), vector<int>(str.length(), 0));

            DFS(str, 0, str.length() - 1, DP);
            cout << DP[0][str.length() - 1] << endl;
        }
    }
    return 0;
}
```

It gets AC.
