---
title: Diligent Robots
date: 2017-04-08 21:21:28
tags:
    - Backtracking
    - Math
---

> **Description**
>
> There are N jobs to be finished. It takes a robot 1 hour to finish one job.
>
> At the beginning you have only one robot. Luckily a robot may build more robots identical to itself. It takes a robot Q hours to build another robot.
>
> So what is the minimum number of hours to finish N jobs?
>
> **Note**
> + two or more robots working on the same job or building the same robot won't accelerate the progress.
>
> **Input**
>
> The first line contains 2 integers, N and Q.
>
> For 70% of the data, 1 <= N <= 1000000
>
> For 100% of the data, 1 <= N <= 1000000000000, 1 <= Q <= 1000
>
> **Output**
>
> The minimum number of hours.
>```
Sample Input
    10 1

Sample Output
    5
```

<!--more-->

This is the first problem of [Microsoft 2017 Campus Hiring Contest - April](https://hihocoder.com/contest/mstest2017april).

First I use the backtracking method using a recuisious way to solve the problem:

```
using namespace std;

long long work(long long remain, long long robots, long long Q) {
    long long hours = 0;
    if (robots >= remain) {
        return 1;
    } else {
        if (remain % robots == 0) {
            hours = remain / robots;
        } else {
            hours = remain / robots + 1;
        }
        return min(hours, work(remain, robots*2, Q) + Q);
    }
}
```

However, the stack is overflowed. So, I try to use a non-backtracking way by using a while loop.

```
using namespace std;

int main() {
    long long N, Q;
    while (cin >> N >> Q) {
        long long idx = 0, res = N;
        while ((long long)pow(2, idx) <= N) {
            long long currentHour = idx * Q;
            if ((long long)pow(2, idx) >= N) {
                currentHour += 1;
            } else if (N % (long long)pow(2, idx) == 0) {
                currentHour += N / (long long)pow(2, idx);
            } else {
                currentHour += N / (long long)pow(2, idx) + 1;
            }
            res = min(res, currentHour);
            idx++;
        }
        cout << res << endl;
    }
    return 0;
}
```

It gets AC.
