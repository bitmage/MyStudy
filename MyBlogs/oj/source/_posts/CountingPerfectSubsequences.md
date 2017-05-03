---
title: Counting Perfect Subsequences
date: 2017-05-03 11:18:09
tags:
    - Math
    - Dynamic Programming
---

> We call a string, , consisting of the letters in the set {a, b, c, d} a perfect string if both the conditions below are true:
>
> + count(a) = count(b)
> + count(c) = count(d)
>
> Solve q queries, where each query consists of a string, s. For each query, print the number of non-empty subsequences of  that are perfect strings. As this number can be very large, print it modulo 10^9 + 7 .
>
> **Input Format**
>
> The first line contains an integer, q , denoting the number of queries.
> Each of the q subsequent lines contains string s for a query.
>
> **Constraints**
> + 1 <= q <= 5
> + 1 <= length(s) <= 5*100000
> + String s consists of one or more of the following characters: a, b, c, and d.
>
> **Output Format**
>
> For each , print the number of non-empty subsequences of  that are perfect strings, modulo , on a new line. <!--more-->
```
Sample Input:
3
abcd
cad
dcc

Sample Output:
3
1
2

Explanation:
We peform the following  queries:
1. "abcd" has 3 non-empty perfect subsequences: ab, cd, and abcd. Thus, the answer is 3.
2. "cad" has 1 non-empty perfect subsequence: cd. Thus, the answer is 1.
3. "dcc" has 2 non-empty perfect subsequences: dc and dc. Note that, while both these strings contain the same characters, they are distinct subsequences of  (i.e., s[0]s[1] and s[0]s[2]). Thus, the answer is 2.
```

This is a problem from HackerRank HourRank 20. I think it is an interesting problem. Because it is a Math problem.

You can see from the description that you will do only the math job.

To "abcd", you can get one A, one B, one C, one D. So:
+ the total number of AB is `C(1, 1) * C(1, 1)`
+ the total number of CD is `C(1, 1) * C(1, 1)`
+ the total number of ABCD is `C(1, 1) * C(1, 1) * C(1, 1) * C(1, 1)`

Here comes the result:
```
using namespace std;


long long calcC(int num, int total) {
    long long low = 1, high = 1;
    for (int i = 1; i <= num; i++) {
        low *= (long long)i;
        low %= 1000000007;
    }
    for (int i = total; i >= num; i--) {
        high *= (long long)i;
        high %= 1000000007;
    }
    long long res = 0;
    if (high * low == 0) {
        res = 0;
    } else {
        res = high / low;
    }
    return res;
}

long long countPair(long first, long second) {
    if (first == 0 || second == 0) {
        return 0;
    }
    long long total = 0;
    for (int i = 1; i <= min(first, second); i++) {
        total += calcC(i, first) * calcC(i, second);
        total %= 1000000007;
    }
    return total;
}

long long countFour(long a, long b, long c, long d) {
    if (a * b * c * d == 0) {
        return 0;
    }

    long long total = 0;
    for (int i = 1; i <= min(a, b); i++) {
        for (int j = 1; j <= min(c, d); j++) {
            total += calcC(i, a) * calcC(i, b) * calcC(j, c) * calcC(j, d);
            total %= 1000000007;
        }
    }
    return total;
}

long countSubs(string s){
    long aNum = 0, bNum = 0, cNum = 0, dNum = 0;
    for (int i = 0; i < (int)s.length(); i++) {
        switch (s[i]) {
            case 'a':
                aNum++;
                break;
            case 'b':
                bNum++;
                break;
            case 'c':
                cNum++;
                break;
            case 'd':
                dNum++;
                break;
        }
    }

    long long AB = countPair(aNum, bNum);
    long long CD = countPair(cNum, dNum);
    long long ABCD = countFour(aNum, bNum, cNum, dNum);
    return (AB + CD + ABCD) % 1000000007;
}

int main() {
    // freopen("./in.file","r",stdin);
    int q;
    cin >> q;
    for(int a0 = 0; a0 < q; a0++){
        string s;
        cin >> s;
        long result = countSubs(s);
        cout << result << endl;
    }
    return 0;
}
```

But it gets TLE. Because we calc many times of C(n, m).

So, I use DP to improve the performance:

```
using namespace std;

map<pair<int, int>, long long> DP;

long long calcC(int num, int total) {
    if (DP.find(pair<int, int>(num, total)) != DP.end()) {
        return DP.find(pair<int, int>(num, total))->second;
    }
    long long low = 1, high = 1;
    for (int i = 1; i <= num; i++) {
        low *= (long long)i;
        low %= 1000000007;
    }
    for (int i = total; i >= num; i--) {
        high *= (long long)i;
        high %= 1000000007;
    }
    long long res = 0;
    if (high * low == 0) {
        res = 0;
    } else {
        res = high / low;
    }
    DP.insert(pair<pair<int, int>, long long>(pair<int, int>(num, total), res));
    return res;
}

long long countPair(long first, long second) {
    if (first == 0 || second == 0) {
        return 0;
    }
    long long total = 0;
    for (int i = 1; i <= min(first, second); i++) {
        total += calcC(i, first) * calcC(i, second);
        total %= 1000000007;
    }
    return total;
}

long long countFour(long a, long b, long c, long d) {
    if (a * b * c * d == 0) {
        return 0;
    }

    long long total = 0;
    for (int i = 1; i <= min(a, b); i++) {
        for (int j = 1; j <= min(c, d); j++) {
            total += calcC(i, a) * calcC(i, b) * calcC(j, c) * calcC(j, d);
            total %= 1000000007;
        }
    }
    return total;
}

long countSubs(string s){
    long aNum = 0, bNum = 0, cNum = 0, dNum = 0;
    for (int i = 0; i < (int)s.length(); i++) {
        switch (s[i]) {
            case 'a':
                aNum++;
                break;
            case 'b':
                bNum++;
                break;
            case 'c':
                cNum++;
                break;
            case 'd':
                dNum++;
                break;
        }
    }

    long long AB = countPair(aNum, bNum);
    long long CD = countPair(cNum, dNum);
    long long ABCD = countFour(aNum, bNum, cNum, dNum);
    return (AB + CD + ABCD) % 1000000007;
}

int main() {
    int q;
    cin >> q;
    for(int a0 = 0; a0 < q; a0++){
        string s;
        cin >> s;
        long result = countSubs(s);
        cout << result << endl;
    }
    return 0;
}
```

But in some case. The result is Exception. Because the middle result is larger than the LONG_MAX.

To solve the problem, I use Python to skip the problem.

```python
#!/bin/python3
# encoding: utf-8

import sys

def calcC(num, total):
    low = 1
    high = 1

    for idx in range(1, num + 1):
        low *= idx
        low %= 1000000007
    for idx in range(1, total + 1):
        high *= idx
        high %= 1000000007

    return high // low

def countPair(first, second):
    if first * second == 0:
        return 0
    total = 0
    for idx in range(1, min(first, second) + 1):
        total += calcC(idx, first) * calcC(idx, second)
    return total

def countFour(a, b, c, d):
    if a * b * c * d == 0:
        return 0

    total = 0
    for idx in range(1, min(a, b) + 1):
        for idy in range(1, min(c, d) + 1):
            total += calcC(idx, a) * calcC(idx, b) * calcC(idy, c) * calcC(idy, d)
    return total

def countSubs(s):
    a = 0
    b = 0
    c = 0
    d = 0
    for ch in s:
        if ch == 'a':
            a += 1
        if ch == 'b':
            b += 1
        if ch == 'c':
            c += 1
        if ch == 'd':
            d += 1

    AB = countPair(a, b)
    CD = countPair(c, d)
    ABCD = countFour(a, b, c, d)
    return int((AB + CD + ABCD) % 1000000007)

q = int(input().strip())
for a0 in range(q):
    s = input().strip()
    result = countSubs(s)
    print(result)
```

But it still gets Runtime Error: the number is too large. So, it must be another better solution.

The most important thing is to reduce the time cost of C(n, m).

So, there comes the solution:

```c++
using namespace std;

#define MOD 1000000007
#define ll long long int

ll f[1000005];

long long pow(ll a, ll b) {
    long long x=1,y=a;
    while(b > 0) {
        if(b%2 == 1) {
            x=(x*y);
            if(x>MOD) x%=MOD;
        }
        y = (y*y);
        if(y>MOD) y%=MOD;
        b /= 2;
    }
    return x;
}

long long InverseEuler(ll n) {
    return pow(n, MOD - 2);
}

long long C(ll n, ll r) {
    return (f[n]*((InverseEuler(f[r]) * InverseEuler(f[n-r])) % MOD)) % MOD;
}


int main() {
    f[0] = 1;
    for(ll i=1 ; i<=500000; i++)
        f[i] = (f[i-1]*i)%MOD;
    int t;
    cin>>t;
    while(t--) {
        string str;
        cin>>str;
        int l = str.length();
        assert(1 <= l && l <= 500000);
        ll a,b,c,d;
        a=b=c=d=0;
        for(int i = 0; i< l ; i++) {
            if(str[i] == 'a')
                a++;
            else if(str[i] == 'b')
                b++;
            else if(str[i] == 'c')
                c++;
            else if(str[i] == 'd')
                d++;
        }
        cout<<(C(a+b,b)*C(c+d,d) + MOD - 1)%MOD<<endl;
    }
}
```

It eventually gets AC.
