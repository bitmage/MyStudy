---
title: Construct the Array
date: 2017-12-04 13:46:56
tags:
    - Math
    - Array
---

> This is a problem from [Hackkerank](https://www.hackerrank.com/contests/101hack52/challenges/construct-the-array).
> Your goal is to find the number of ways to construct an array such that consecutive positions contain different values.

<!--more-->

This is a problem which I think is a pure math problem. Because what you to solve the problem is to find the mathmetic releationship between the neighbour number.

```
using namespace std;

const long long MOD = (long long)pow(10, 9) + 7;

long long powMod(long long base,long long k,long long MOD)
{
    long long x = 1,y = base;
    while(k > 0) {
        if(k%2 == 1) {
            x = (x*y)%MOD;
        }
        y = (y*y)%MOD; // squaring the base
        k /= 2;
    }
    return x%MOD;
}

long long countArray(long long n, long long k, long long x)
{
    if (k == 2) {
        if (x == 1) {
            return n%2 == 0 ? 0 : 1;
        } else {
            return n%2 == 0 ? 1 : 0;
        }
    }

    long long len = n - 2, num = k - 1, res = 0;
    if (len % 2 == 0) {
        for (int i = 1; i <= len; i = i + 2) {
            res = ((powMod(num, i, MOD) * (num - 1))%MOD + res)%MOD;
        }
    } else {
        res = num;
        for (int i = 2; i <= len; i = i + 2) {
            res = ((powMod(num, i, MOD) * (num - 1))%MOD + res)%MOD;
        }
    }
    if (x != 1) {
        if (len%2 == 0) {
            res = res + 1;
        } else {
            res = res - 1;
        }
    }
    return res;
}

int main()
{
    long long n;
    long long k;
    long long x;
    cin >> n >> k >> x;
    long long answer = countArray(n, k, x);
    cout << answer << endl;
    return 0;
}
```

You also need to pay attention to the MOD. You can't use `-` and `/` here.

It gets AC.
