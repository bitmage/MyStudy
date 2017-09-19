---
title: Biinary Numbers
date: 2017-09-19 15:01:57
tags:
    - Math
    - Array
---

> **Description**
>
> It is well known that each digit in a binary number can be only 0 or 1. Little Hi is wondering what happens if digit 2 is also allowed. He calls these numbers Biinary Numbers. For example (21)ii = 2 * 21 + 1 = 5, (112)ii = 1 * 22 + 1 * 21 + 2 = 8.
>
> Little Hi soon notices that in biinary number system, numbers may have more than one representations. For example 8 has other representations as (1000)ii, (200)ii, (120)ii.
>
> Given a decimal number N, Little Hi wants to know how many different representations of N exist in biinary number system?
>
> **Input**
```
A decimal number N. (0 ≤ N ≤ 1000000000)
```
> **Output**
```
The number of N's representations in biinary system.
```
> **Sample Input**
```
    8
```
> **Sample Output**
```
    4
```

<!--more-->

The key is to know that:

```
f(2n) = f(n)
f(2n + 1) = f(n) + f(n + 1)
```

Then the code is simple:

```
using namespace std;

map<int, int> DP;

int calc(int num) {
    if (DP[num]) {
        return DP[num];
    }

    if (num == 0 || num == 1) {
        DP[0] = 1;
        DP[1] = 1;
    } else {
        if (num%2 == 0) {
            DP[num] = calc(num/2);
        } else {
            int n = (num - 1)/2;
            DP[num] = calc(n) + calc(n + 1);
        }
    }
    return DP[num];
}


int main() {
    ios::sync_with_stdio(false);
    int num;
    cin >> num;

    num = num + 1;
    cout << calc(num) << endl;
    return 0;
}
```

It gets AC.
