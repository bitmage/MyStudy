---
title: Mahmoud and Ehab and the xor
date: 2017-09-21 22:37:39
tags:
    - Constructive algorithms
---

> Mahmoud and Ehab are on the third stage of their adventures now. As you know, Dr. Evil likes sets. This time he won't show them any set from his large collection, but will ask them to create a new set to replenish his beautiful collection of sets.
>
> Dr. Evil has his favorite evil integer x. He asks Mahmoud and Ehab to find a set of n distinct non-negative integers such the bitwise-xor sum of the integers in it is exactly x. Dr. Evil doesn't like big numbers, so any number in the set shouldn't be greater than 106.
>
> **Input**
>
> The only line contains two integers n and x (1 ≤ n ≤ 105, 0 ≤ x ≤ 105) — the number of elements in the set and the desired bitwise-xor, respectively.
>
> **Output**
>
> If there is no such set, print "NO" (without quotes).
>
> Otherwise, on the first line print "YES" (without quotes) and on the second line print n distinct integers, denoting the elements in the set is any order. If there are multiple solutions you can print any of them.
>
> **Examples**
```
Input
5 5

Output
YES
1 2 4 5 7

Input
3 6

Output
YES
1 2 5
```

<!--more-->

Choose this problem is not because it is hard, but it is interesting.

At first, I thounght it can be backtracking into DP[NUM] = DP[NUM - 1]^x.

So, the solution is like:

```
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    int n, x;
    cin >> n >> x;

    if (n == 2 && x == 0) {
        cout << "NO" << endl;
        return 0;
    }

    map<int, int> used;
    int currentRes = x;
    int num = 1;
    used[x] = 1;
    while (num < n) {
        bool isFind = false;
        for (int i = 0; i < 1000000; i++) {
            if (!used[i] && !used[(currentRes^i)]) {
                used[currentRes^i]++;
                num++;
                used[i]++;
                num++;
                used[currentRes]--;
                num--;
                currentRes = i;
                isFind = true;
                break;
            }
        }
        if (!isFind) {
            break;
        }
    }

    if (num != n) {
        cout << "NO" << endl;
    } else {
        cout << "YES" << endl;
        for (auto i : used) {
            if (i.second > 0) {
                cout << i.first << ' ';
            }
        }
        cout << endl;
    }

    return 0;
}
```

But it gets TLE.

Then I found, why not just go ahead. Then finish the result in the end?

The code becames:

```
using namespace std;

int a = 1 << 17;
int b = 1 << 18;

int main() {
    ios::sync_with_stdio(false);
    int n, x;
    cin >> n >> x;

    if (n == 1) {
        cout << "YES" << endl;
        cout << x << endl;
    } else if (n == 2) {
        if (x == 0) {
            cout << "NO" << endl;
            return 0;
        } else {
            cout << "YES" << endl;
            cout << 0 << ' ' << x << endl;
        }
    } else {
        cout << "YES" << endl;
        int currentRes = x;

        for (int i = 1; i <= n - 3; i++) {
            currentRes = currentRes^i;
            cout << i << ' ';
        }
        if (currentRes == 0) {
            cout << a << ' ' << b << ' ' << (a+b) << endl;
        } else {
            cout << a << ' ' << b << ' ' << ((a+b)^currentRes) << endl;
        }
    }

    return 0;
}
```
It gets AC.
