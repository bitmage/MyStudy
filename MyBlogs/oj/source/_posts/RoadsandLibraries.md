---
title: Roads and Libraries
date: 2017-11-25 20:28:06
tags:
    - Dynamic Programming
---

> HackerLand has n cities numbered from 1 to n. The cities are connected by m bidirectional roads. A citizen has access to a library if:
>
> + Their city contains a library.
> + They can travel by road from their city to a city containing a library.
>
> The cost of repairing any road is dollars, and the cost to build a library in any city is dollars.
>
> You are given q queries, where each query consists of a map of HackerLand and value of clib and croad.
>
> For each query, find the minimum cost of making libraries accessible to all the citizens and print it on a new line.
>
> **Input Format**
> The first line contains a single integer, q, denoting the number of queries. The subsequent lines describe each query in the following format:
> The first line contains four space-separated integers describing the respective values of n(the number of cities), m(the number of roads), clib(the cost to build a library), and croad(the cost to repair a road).
> Each line i of the m subsequent lines contains two space-separated integers, ui and vi, describing a bidirectional road connecting cities ui and vi.
>
> **Output Format**
> For each query, print an integer denoting the minimum cost of making libraries accessible to all the citizens on a new line.
> <!--more-->
> **Sample Input**
```
2
3 3 2 1
1 2
3 1
2 3
6 6 2 5
1 3
3 4
2 4
1 2
2 3
5 6
```
> **Sample Output**
```
4
12
```

Really interesting problem. Because you only need to divide the problem into two parts.

If the `clib <= cpath`. Then the minimum cost is to build library in every city. Because the road is much more expansive.

If the `clib > cpath`. We know we can divide the cities into different parts. For example, in the sample input. We can know that the second example: we have to city groups.`[1, 2, 3, 4] and [5, 6]`.

Then we just need to build one library in the group and we can find that build a road to add a node is much cheaper.

Finally, we can solve the problem in the following solution:

```
using namespace std;

unsigned long long res = 0;

int dfs(vector<bool> &v, vector<vector<int>> &nodes, int idx)
{
    if (v[idx]) {
        return 0;
    }
    v[idx] = true;
    int num = 1;
    for (int i = 0; i < (int)nodes[idx].size(); i++) {
        num += dfs(v, nodes, nodes[idx][i]);
    }
    return num;
}

int main()
{
    ios::sync_with_stdio(false);
    int q;
    cin >> q;
    for (int i = 0; i < q; i++) {
        res = 0;

        long long n, m, clib, cpath;
        cin >> n >> m >> clib >> cpath;
        vector<vector<int>> nodes(n);

        for (int j = 0; j < m; j++) {
            int u, v;
            cin >> u >> v;
            u--;
            v--;

            nodes[v].push_back(u);
            nodes[u].push_back(v);
        }

        if (clib < cpath) {
            res = clib * n;
        } else {
            vector<bool> v(n, false);
            for (int k = 0; k < n; k++) {
                if (v[k]) {
                    continue;
                }
                res += clib;
                int nodes_num = dfs(v, nodes, k);
                res += (nodes_num - 1) * cpath;
            }
        }
        cout << res << endl;
    }
    return 0;
}
```

It gets AC.
