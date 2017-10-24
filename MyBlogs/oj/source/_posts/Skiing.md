---
title: Skiing
date: 2017-10-24 18:37:37
tags:
    - Depth-first Search
    - Dynamic Programming
    - Graph
---


> In this winter holiday, Bob has a plan for skiing at the mountain resort.

> This ski resort has M different ski paths and N different flags situated at those turning points.
>
> The i-th path from the Si-th flag to the Ti-th flag has length Li.
>
> Each path must follow the principal of reduction of heights and the start point must be higher than the end point strictly.
>
> An available ski trail would start from a flag, passing through several flags along the paths, and end at another flag.
>
> Now, you should help Bob find the longest available ski trail in the ski resort.
>
> **Input Format**
> + The first line contains an integer T, indicating that there are T cases.
> + In each test case, the first line contains two integers N and M where 0 \< N \<= 100000 and 0 \< M \<= 1000000 as described above.
> + Each of the following M lines contains three integers Si, Ti, and Li (0 < Li < 1000)) describing a path in the ski resort.
>
> **Output Format**
> + For each test case, ouput one integer representing the length of the longest ski trail.
>
```
Input:
    1
    5 4
    1 3 3
    2 3 4
    3 4 1
    3 5 2
Output:
    6
```
<!--more-->

It is a simple problem in ACM-ICPC Asia 2017. You can quickly understand that the problem is just need you to find the longest way in a non-directed graph.

So, you can use memorized and dfs to solve this or use a top-sort solution.

Here I use the memorized and dfs:

```
using namespace std;

struct path {
    int to;
    int len;
};

long long dfs(vector<vector<path>> &nodes,
              int currentIdx,
              vector<bool> &visited,
              vector<long long> &DP)
{
    visited[currentIdx] = true;

    long long res = 0;
    for (auto path : nodes[currentIdx]) {
        if (!visited[path.to]) {
            res = max(path.len + dfs(nodes, path.to, visited, DP), res);
        } else {
            res = max(path.len + DP[path.to], res);
        }
    }
    DP[currentIdx] = res;
    return res;
}

int main()
{
    ios::sync_with_stdio(false);
    int T;
    cin >> T;
    while (T--) {
        int N, M;
        cin >> N >> M;
        vector<vector<path>> nodes(N + 1);

        for (int i = 0; i < M; i++) {
            int s, t, l;
            cin >> s >> t >> l;
            struct path p;
            p.to = t;
            p.len = l;
            nodes[s].push_back(p);
        }

        long long res = 0;
        vector<long long> DP(N, 0);
        vector<bool> visited(N, false);

        for (int i = 1; i <= N; i++) {
            res = max(res, dfs(nodes, i, visited, DP));
        }

        cout << res << endl;
    }

    return 0;
}
```

It gets AC.
