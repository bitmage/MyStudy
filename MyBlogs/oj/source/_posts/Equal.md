---
title: Equal
date: 2017-07-25 10:11:04
tags:
    - Dynamic Programming
    - Greedy
---

> Christy is interning at HackerRank. One day she has to distribute some chocolates to her colleagues. She is biased towards her friends and may have distributed the chocolates unequally. One of the program managers gets to know this and orders Christy to make sure everyone gets equal number of chocolates.
>
> But to make things difficult for the intern, she is ordered to equalize the number of chocolates for every colleague in the following manner,
>
> For every operation, she can choose one of her colleagues and can do one of the three things.
>
> + She can give one chocolate to every colleague other than chosen one.
> + She can give two chocolates to every colleague other than chosen one.
> + She can give five chocolates to every colleague other than chosen one.
>
> Calculate minimum number of such operations needed to ensure that every colleague has the same number of chocolates.
>
> **Input Format**
>
> First line contains an integer denoting the number of testcases. testcases follow.
> Each testcase has lines. First line of each testcase contains an integer denoting the number of colleagues. Second line contains N space separated integers denoting the current number of chocolates each colleague has.
>
> **Constraints**
> + 1 <= T <= 100
> + 1 <= N <= 10000
> + Number of initial chocolates each colleague has < 1000
>
> **Output Format**
>
> T lines, each containing the minimum number of operations needed to make sure all colleagues have the same number of chocolates.
> <!--more-->
> **Sample Input**
```
1
4
2 2 3 7
```
> **Sample Output**
```
2
```
> **Explanation**
>
> + 1st operation: Christy increases all elements by 1 except 3rd one
>   + 2 2 3 7 -> 3 3 3 8
> + 2nd operation: Christy increases all element by 5 except last one
>   + 3 3 3 8 -> 8 8 8 8

This is a classic DP problem, I think the most important thing is to translate this problem into a coin change problem.

The problem need you to make the chocolates to be the same, you can think the other way that you should make the number of each chocolates to become the minimum.

But the minimum may not always the key, so you should make the value from minimum - 4 to minimum.

My code is here:

```
#include <cstdio>
#include <climits>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <cmath>
#include <iostream>
#include <sstream>
#include <algorithm>
#include <vector>
#include <set>
#include <map>
#include <unordered_map>
#include <unordered_set>
#include <bitset>
#include <stack>
#include <string>
#include <queue>
#include <list>
#include <iomanip>
#include <limits>
#include <typeinfo>
#include <functional>
#include <numeric>
#include <complex>

using namespace std;

int calc(int N) {
    int res = 0;
    res += N / 5; N = N % 5;
    res += N / 2; N = N % 2;
    res += N;
    return res;
}

int main() {
    int N, T;
    // freopen("./Equal.txt","r",stdin);
    cin >> T;
    while (T--) {
        cin >> N;
        vector<int> nums(N, 0);
        int minNum = INT_MAX;
        for (int j = 0; j < N; j++) {
            cin >> nums[j];
            minNum = min(minNum, nums[j]);
        }

        int res = INT_MAX;
        for (int x = minNum - 4; x <= minNum; x++) {
            int tmp = 0;
            for (int j = 0; j < N; j++) {
                tmp += calc(nums[j] - (minNum));
            }
            res = min(tmp, res);
        }

        cout << res << endl;
    }
    return 0;
}
```

It gets AC.
