---
title: Maximum Gcd and Sum
date: 2017-07-18 15:52:39
tags:
    - Array
    - Dynamic Programming
---

> You can see the problem description [here](https://www.hackerrank.com/contests/w34/challenges/maximum-gcd-and-sum/problem).

<!--more-->

This is Hackerrank Week of Code 34.

At first you can quickly find the solution by remove the delipute number in an array and then sort them from large to small.

Then caculate one by one. Like:

```
using namespace std;

struct Number {
    int value;
    bool operator < (const Number &a) const {
        return value > a.value;
    }
};

void swap(int & a, int & b) {
    int c = a;
    a = b;
    b = c;
}

int gcd(int a,int b) {
    if(0 == a) {
        return b;
    }
    if(0 == b) {
        return a;
    }
    if(a > b) {
        swap(a,b);
    }
    for(int c = a % b; c > 0; c = a % b) {
        a = b;
        b = c;
    }
    return b;
}

int main() {
    int N;
    while (cin >> N) {
        set<Number> nums1, nums2;
        for (int i = 0; i < N; i++) {
            Number _tmp;
            cin >> _tmp.value;
            nums1.insert(_tmp);
        }

        for (int i = 0; i < N; i++) {
            Number _tmp;
            cin >> _tmp.value;
            nums2.insert(_tmp);
        }

        int maxSum = INT_MIN, maxGCD = 1;

        for (auto num1 : nums1) {
            for (auto num2 : nums2) {
                if (min(num1.value, num2.value) < maxGCD) {
                    break;
                }
                int _gcd = gcd(num1.value, num2.value);
                if (_gcd > maxGCD) {
                    maxGCD = _gcd;
                    maxSum = num1.value + num2.value;
                } else if (_gcd == maxGCD) {
                    maxSum = max(num1.value + num2.value, maxSum);
                }
            }
        }

        cout << maxSum << endl;
    }
    return 0;
}
```

It pass some of the test cases, but not all. So, we should do some improvements here.

So far, What I have done is all here:

```
using namespace std;

int main(int argc, char *argv[]) {
    vector<int> DP1(1000005, 0);
    vector<int> DP2(1000005, 0);
    int N;
    while (cin >> N) {
        for (int i = 0; i < N; i++) {
            int num;
            cin >> num;
            for (int i = 1; i * i < num; i++) {
                if (num % i == 0) {
                    DP1[i] = max(DP1[i], num);
                    DP1[num / i] = max(DP1[num / i], num);
                }
            }
        }

        for (int i = 0; i < N; i++) {
            int num;
            cin >> num;
            for (int i = 1; i * i < num; i++) {
                if (num % i == 0) {
                    DP2[i] = max(DP2[i], num);
                    DP2[num / i] = max(DP2[num / i], num);
                }
            }
        }

        for (int i = 1000004; i > 0; i--) {
            if (DP1[i] > 0 && DP2[i] > 0) {
                cout << DP1[i] + DP2[i] << endl;
                break;
            }
        }
    }
    return 0;
}
```

It only gets 10...

Now, I AC.

```
using namespace std;

int prime[100000];
bool isPrime[1000005];

void getPrime(int x){
    for (int i=1; i<x; i+=2 )
        isPrime[i] = 1, isPrime[i-1] = 0;
    prime[prime[0]=1] = 2;
    for (int i=3; ; i+=2) {
        if(isPrime[i]) {
            int j = i*i, k = i+i;
            if(j >= x) break;
            while(j < x ) {
                isPrime[j] = 0;  j += k;
            }
        }
    }
    for ( int i=3; i<x; i += 2 )
        if(isPrime[i]) prime[++prime[0]] = i;
}

int p[34380], cnt[34380];

void getPrimeDivisor( int x ) {
    p[0] = cnt[0] = 0; int t;
    for (int i=1; prime[i]*prime[i]<=x  && i<=prime[0]; ++i) {
        t = 0;
        while( x%prime[i] == 0 ) {
            ++t; x /= prime[i];
        }
        if( t ) p[++p[0] ] = prime[i], cnt[++cnt[0] ] = t;
    }
    if(x > 1) p[++p[0] ] = x, cnt[++cnt[0] ] = 1;
};

int divisor[1500];

void getDivisor(int x) {
    getPrimeDivisor(x);
    divisor[0] = 1;
    divisor[1] = 1;
    for ( int i=1; i<=p[0]; ++i ) {
        int nowNum = divisor[0];
        int base = 1;
        for ( int j=1; j<=cnt[i]; ++j ) {
            base *= p[i];
            for ( int k=1; k<=divisor[0]; ++k )
                divisor[++nowNum] = divisor[k]*base;
        }
        divisor[0] = nowNum;
    }
}

int main(int argc, char *argv[]) {
    vector<int> DP1(1000005, 0);
    vector<int> DP2(1000005, 0);
    set<int> dividers;

    getPrime(1000000);

    int N;
    while (cin >> N) {
        for (int i = 0; i < N; i++) {
            int num;
            cin >> num;
            if (DP1[num]) {
                continue;
            }
            getDivisor(num);
            for (int i = 1; i <= divisor[0]; i++) {
                DP1[divisor[i]] = max(DP1[divisor[i]], num);
            }
        }

        for (int i = 0; i < N; i++) {
            int num;
            cin >> num;
            if (DP2[num]) {
                continue;
            }
            getDivisor(num);
            for (int i = 1; i <= divisor[0]; i++) {
                DP2[divisor[i]] = max(DP2[divisor[i]], num);
            }
        }

        for (int i = 1000004; i > 0; i--) {
            if (DP1[i] && DP2[i]) {
                cout << DP1[i] + DP2[i] << endl;
                break;
            }
        }
    }
    return 0;
}
```
