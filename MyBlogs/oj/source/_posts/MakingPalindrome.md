---
title: Making Palindrome
date: 2017-08-07 16:16:57
tags:
    - String
    - Dynamic Programming
---


> **Description**
>
> Given a string S, how many operations are needed to change S into a palindrome?
>
> For each operation you can either insert a character, or delete a character, or modify a character.
>
> **Input**
>
> The string S.
>
> The length of S is no more than 100 and S contains only capital letters 'A' - 'Z'.
>
> **Output**
>
> The minimum operations needed.
>
> **Sample Input**
```
    ABAD
```
> **Sample Output**
```
    1
```

<!--more-->

This is a classic DP problem. The most important thing to solve this problem is to know that if the str[i] == str[j], then DP[i][j] == DP[i+1][j-1]

Or, the value should be :

+ 1 + DP[i][j - 1], you append the str[j] to the first.
+ 1 + DP[i + 1][j - 1], you replace the str[i] with the str[j].
+ 1 + DP[i + 1][j], you append the str[i] to the last.

So, the code is here:

```
using namespace std;

#define MAX 5000

int solve(string str, int startIdx, int endIdx, vector<vector<int> > &DP) {
    if (DP[startIdx][endIdx] != MAX) {
        return DP[startIdx][endIdx];
    }
    if (startIdx >= endIdx) {
        return 0;
    }

    if (str[startIdx] == str[endIdx]) {
        DP[startIdx][endIdx] = solve(str, startIdx + 1, endIdx - 1, DP);
    } else {
        int appendLast = 1 + solve(str, startIdx + 1, endIdx, DP);
        int appendFirst = 1 + solve(str, startIdx, endIdx - 1, DP);
        int changeLast = 1 + solve(str, startIdx + 1, endIdx - 1, DP);

        DP[startIdx][endIdx] = min(appendLast, min(appendFirst, changeLast));
    }
    return DP[startIdx][endIdx];
}


int main() {
    string str;
    while (cin >> str) {
        vector<vector<int> > DP(str.length(), vector<int>(str.length(), MAX));
        solve(str, 0, str.length() - 1, DP);
        cout << DP[0][str.length() - 1] << endl;
    }
    return 0;
}
```

It gets AC.
