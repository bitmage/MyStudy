---
title: Redundant Connection
date: 2017-09-25 11:39:31
tags:
    - Depth-first Search
    - Dynamic Programming
---

> We are given a "tree" in the form of a 2D-array, with distinct values for each node.
>
> In the given 2D-array, each element pair [u, v] represents that v is a child of u in the tree.
>
> We can remove exactly one redundant pair in this "tree" to make the result a tree.
>
> You need to find and output such a pair. If there are multiple answers for this question, output the one appearing last in the 2D-array. There is always at least one answer.
>
> **Example 1:**
```
Input: [[1,2], [1,3], [2,3]]
Output: [2,3]
Explanation: Original tree will be like this:
  1
 / \
2 - 3
```
> **Example 2:**
```
Input: [[1,2], [1,3], [3,1]]
Output: [3,1]
Explanation: Original tree will be like this:
  1
 / \\
2   3
```
> **Note:**
> + The size of the input 2D-array will be between 1 and 1000.
> + Every integer represented in the 2D-array will be between 1 and 2000.

<!--more-->

At first, I thought I can use DFS each time we add a edge to check whether we have a circle in the graph.

The code is:

```
using namespace std;

struct Node {
    int val;
    set<int> nexts;
};

class Solution {
public:
    bool _check(map<int, Node> &nodes, int currentIdx, set<int> &visited) {
        if (visited.find(currentIdx) != visited.end()) {
            return true;
        }

        visited.insert(currentIdx);

        bool isCircle = false;
        for (auto nextIdx: nodes[currentIdx].nexts) {
            nodes[nextIdx].nexts.erase(currentIdx);
            isCircle = isCircle || _check(nodes, nextIdx, visited);
            nodes[nextIdx].nexts.insert(currentIdx);
        }

        return isCircle;
    }

    bool hasCircle(map<int, Node> &nodes) {
        bool isCircle = false;
        set<int> visited;
        for (auto nextNode: nodes) {
            if (isCircle) {
                return true;
            }
            if (visited.find(nextNode.first) != visited.end()) {
                continue;
            }
            isCircle = isCircle || _check(nodes, nextNode.first, visited);
        }
        return false;
    }

    vector<int> findRedundantConnection(vector<vector<int>>& edges) {
        map<int, Node> nodes;

        vector<int> res;

        for (int i = 0; i < (int)edges.size(); i++) {
            int x = edges[i][0];
            int y = edges[i][1];

            if (nodes.find(x) == nodes.end()) {
                Node node;
                node.val = x;
                nodes[x] = node;
            }
            if (nodes.find(y) == nodes.end()) {
                Node node;
                node.val = y;
                nodes[y] = node;
            }
            if (nodes[x].nexts.find(y) != nodes[x].nexts.end()) {
                res = edges[i];
            } else {
                nodes[x].nexts.insert(y);
                nodes[y].nexts.insert(x);
                if (hasCircle(nodes)) {
                    res = edges[i];
                    nodes[x].nexts.erase(y);
                    nodes[y].nexts.erase(x);
                }
            }
        }

        return res;
    }
};
```

It gets TLE.

Then I get a thinking that I don't have to check whether it has a circle, I just need to check if we don't have such a edge, can we find a path from idx to idy.

Then the code becomes:

```
using namespace std;

class Solution {
public:
    bool canGo(map<int, set<int>> &nodes, int startIdx, int endIdx, set<int> &visited) {
        if (visited.find(startIdx) != visited.end()) {
            return false;
        }

        visited.insert(startIdx);
        if (nodes[startIdx].find(endIdx) != nodes[startIdx].end()) {
            return true;
        } else {
            bool isOk = false;
            for (auto nextIdx : nodes[startIdx]) {
                isOk = isOk || canGo(nodes, nextIdx, endIdx, visited);
            }
            return isOk;
        }
    }

    vector<int> findRedundantConnection(vector<vector<int>>& edges) {
        map<int, set<int>> nodes;
        vector<int> res;
        set<int> visited;
        for (auto edge : edges) {
            visited.clear();

            if (canGo(nodes, edge[0], edge[1], visited)) {
                res = edge;
            } else {
                nodes[edge[0]].insert(edge[1]);
                nodes[edge[1]].insert(edge[0]);
            }
        }
        return res;
    }
};
```

It gets AC.
