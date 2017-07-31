---
title: Tree or Not
date: 2017-07-31 10:28:24
tags:
    - Tree
    - Depth-first Search
    - Union Find
---

> **Description**
>
> Given an undirected graph G which has N vertice and M edges, determine whether G is a tree.
>
> **Input**
>
> The first line contains an integer T, the number of test cases. (1 ≤ T ≤ 10) For each test case the first line contains 2 integers N and M. (2 ≤ N ≤ 500, 1 ≤ M ≤ 100000)
>
> The following M lines each contain 2 integers a and b representing that there is an edge between a and b. (1 ≤ a, b ≤ N)
>
> **Output**
>
> For each test case output "YES" or "NO" indicating whether G is a tree or not.
>
> **Sample Input**
```
    2
    3 2
    3 1
    3 2
    5 5
    3 1
    3 2
    4 5
    1 2
    4 1
```
> **Sample Output**
```
    YES
    NO
```

<!--more-->

We can use two methods to solve this problem. The first one is using Union Find. You can see the code here:

```
class UnionFind {
    private int[] father;
    private int count;
    public UnionFind(int n) {
        father = new int[n];
        count = n;
        for (int i = 0; i < n; i++){
            father[i] = i;
        }
    }
    public int count() {
        return this.count;
    }
    public int find(int p) {
        int root = father[p];
        while (root != father[root])
            root = father[root];
        //as long as we get here, root is the final dad
        while (p != root) {
            int tmp = father[p];
            father[p] = root;
            p = tmp;
        }
        return root;
    }
    public void union(int p, int q) {
        int fatherP = find(p);
        int fatherQ = find(q);
        if (fatherP != fatherQ) {
            father[fatherP] = fatherQ;
            count--;
        }
    }
}

public class Solution {
    public boolean validTree(int n, int[][] edges) {
        UnionFind uf = new UnionFind(n);
        for (int[] edge : edges){
            int p = edge[0];
            int q = edge[1];
            if (uf.find(p) == uf.find(q))
                return false;
            else
                uf.union(p,q);
        }
        return uf.count() == 1;
    }
}
```

Then, you can use DFS to solve this problem. Code is here:

```
using namespace std;

struct Node {
    int idx;
    set<int> nexts;
};


bool DFS(vector<Node> &nodes, int currentIdx, vector<bool> &visited) {
    if (visited[currentIdx]) {
        return false;
    }

    visited[currentIdx] = true;

    bool isOk = true;
    for (auto nextIdx : nodes[currentIdx].nexts) {
        nodes[nextIdx].nexts.erase(currentIdx);
        isOk = isOk && DFS(nodes, nextIdx, visited);
    }

    return isOk;
};


bool isAllVisited(vector<bool> &visited) {
    bool res = true;
    for (int i = 0; i < (int)visited.size(); i++) {
        res = res && visited[i];
    }
    return res;
}

int main() {
    int T;
    while (cin >> T) {
        for (int i = 0; i < T; i++) {
            int N, M;
            cin >> N >> M;
            vector<Node> nodes(N);

            bool isOk = true;

            for (int i = 0; i < M; i++) {
                int x, y;
                cin >> x >> y;
                x--;
                y--;


                if (nodes[x].nexts.find(y) != nodes[x].nexts.end()) {
                    isOk = false;
                } else {
                    nodes[x].nexts.insert(y);
                    nodes[y].nexts.insert(x);
                }
            }

            if (isOk) {
                vector<bool> visited(N, false);
                if (DFS(nodes, 0, visited) && isAllVisited(visited)) {
                    cout << "YES" << endl;
                } else {
                    cout << "NO" << endl;
                }
            } else {
                cout << "NO" << endl;
            }
        }
    }
    return 0;
}
```

Both of these get AC.
