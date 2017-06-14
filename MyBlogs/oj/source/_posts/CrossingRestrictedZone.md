---
title: Crossing Restricted Zone
date: 2017-06-14 14:09:42
tags:
    - Depth-first Search
    - Math
---

> **Description**
>
> As a special agent of Country H, you received a difficult mission. You need to drive a jeep crossing a restricted zone full of radar stations without being detected. To simplify this problem we can consider the zone as a rectangular area. The left-bottom corner is at (0, 0) and the right-top corner is at (W, H). There are N radar stations in the area. The i-th station is at (Xi, Yi) with detecting radius Ri. It can detect any vehicle in or on the circle.
>
> You can start at any point on the segment (0, 0)-(0, H) and finish at any point on the segment (W, 0)-(W, H). You can drive along an arbitrary path as long as it is within the restricted zone and not detected by any radar stations.
>
> Given the coordinates of the stations your task is to determine whether such a path exists.
>
> **Input**
>
> The input contains several test cases.
>
> The 1st line contains an integer T, the number of test cases (1 ≤ T ≤ 10).
>
> For each test case the 1st line contains 3 integers, W, H and N (0 ≤ W, H ≤ 1000000, 1 ≤ N ≤ 1000).
>
> For each test case the following N lines each consist of 3 integers Xi, Yi, Ri (0 ≤ Xi ≤ W, 0 ≤ Yi ≤ H, 1 ≤ Ri ≤ 1000000).
>
> **Output**
>
> For each test case output "YES" or "NO" indicating if such path exists.
> **Sample Input**
```
    2
    10 4 2
    5 1 1
    5 3 1
    10 4 2
    5 1 1
    6 3 1
```
> **Sample Output**
```
    NO
    YES
```
<!--more-->

This is Hihocoder Week 154. You can use the simple solution to get 70% percent scores.

```
using namespace std;

struct Circle {
    long long x;
    long long y;
    long long radius;
};

int DP[1001][1001];
vector<Circle> circles;

bool isCovered(Circle a, Circle b) {
    return (a.radius + b.radius)*(a.radius + b.radius) >= (a.x - b.x)*(a.x - b.x) + (a.y - b.y)*(a.y - b.y);
}

int main() {
    int T;
    while (cin >> T) {
        for (int i = 0; i < T; i++) {
            int W, H, N;
            cin >> W >> H >> N;
            memset(DP, 0, sizeof(DP));
            circles.clear();

            for (int i = 0; i < N; i++) {
                Circle circle;
                cin >> circle.x >> circle.y >> circle.radius;
                circles.push_back(circle);
            }

            for (int idx = 0; idx < N - 1; idx++) {
                for (int idy = idx + 1; idy < N; idy++) {
                    if (isCovered(circles[idx], circles[idy])) {
                        DP[idx][idy] = 1;
                        DP[idy][idx] = 1;
                    }
                }
            }

            vector<bool> visited(N, false);
            vector<int> nexts;
            long long minH, maxH, isOK;
            for (int idx = 0; idx < N; idx++) {
                nexts.clear();

                minH = 99999999;
                maxH = -1;
                isOK = 1;

                nexts.push_back(idx);
                while (!nexts.empty()) {
                    int nextIdx = nexts[nexts.size() - 1];

                    visited[nextIdx] = true;
                    minH = min(circles[nextIdx].y - circles[nextIdx].radius, minH);
                    maxH = max(circles[nextIdx].y + circles[nextIdx].radius, maxH);
                    nexts.pop_back();

                    for (int idy = 0; idy < N; idy++) {
                        if (!visited[idy] && DP[nextIdx][idy] == 1) {
                            nexts.push_back(idy);
                        }
                    }
                }

                if (minH <= 0 && maxH >= H) {
                    isOK = 0;
                    break;
                }
            }

            if (isOK == 1) {
                cout << "YES" << endl;
            } else {
                cout << "NO" << endl;
            }
        }
    }
    return 0;
}
```

It will continue, if we change the DP array to using a set to store all the circles. we can reduce the time that search.

But, I am not willing to write this solution.
