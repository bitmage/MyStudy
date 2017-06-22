---
title: Evaluate Division
date: 2017-06-22 17:28:01
tags:
    - Graph
    - Depth-first Search
---

> Equations are given in the format A / B = k, where A and B are variables represented as strings, and k is a real number (floating point number). Given some queries, return the answers. If the answer does not exist, return -1.0.
>
> **Example:**
```
Given a / b = 2.0, b / c = 3.0.
queries are: a / c = ?, b / a = ?, a / e = ?, a / a = ?, x / x = ? .
return [6.0, 0.5, -1.0, 1.0, -1.0 ].

The input is:
    vector<pair<string, string>> equations,
    vector<double>& values,
    vector<pair<string, string>> queries,

    where equations.size() == values.size(), and the values are positive. This represents the equations.

Return vector<double>.

According to the example above:

equations = [ ["a", "b"], ["b", "c"] ],
values = [2.0, 3.0],
queries = [ ["a", "c"], ["b", "a"], ["a", "e"], ["a", "a"], ["x", "x"] ].
```
> The input is always valid. You may assume that evaluating the queries will result in no division by zero and there is no contradiction.

<!--more-->

This is Leetcode No.399. It is really an interesting problem. You can easily turn this problem into a graph-visit problem.

Think about the value of the path is the value given above.

So, the solution is clear to find out:

```
using namespace std;

double RES = -1.0;

class Solution {
    public:
        void dfs(string currentNode, double currentRes, string target, unordered_map<string, unordered_map<string, double> > &MAP, unordered_set<string> &visited) {
            if (visited.find(currentNode) != visited.end()) {
                return;
            }

            visited.insert(currentNode);
            if (MAP.find(currentNode) == MAP.end()) {
                return;
            }

            if (currentNode == target) {
                RES = currentRes;
                return;
            }

            for (auto nextPath : MAP.find(currentNode)->second) {
                dfs(nextPath.first, currentRes * nextPath.second, target, MAP, visited);
            }
        }

        vector<double> calcEquation(vector<pair<string, string> > equations,
                vector<double>& values,
                vector<pair<string, string> > queries) {

            unordered_map<string, unordered_map<string, double> > nodes;

            for (int idx = 0; idx < (int)equations.size(); idx++) {
                if (nodes.find(equations[idx].first) != nodes.end()) {
                    nodes.find(equations[idx].first)->second.insert(pair<string, double>(equations[idx].second, values[idx]));
                } else {
                    unordered_map<string, double> nexts;
                    nexts.insert(pair<string, double>(equations[idx].second, values[idx]));
                    nodes.insert(pair<string, unordered_map<string, double> >(equations[idx].first, nexts));
                }
                if (nodes.find(equations[idx].second) != nodes.end()) {
                    nodes.find(equations[idx].second)->second.insert(pair<string, double>(equations[idx].first, 1 / values[idx]));
                } else {
                    unordered_map<string, double> nexts;
                    nexts.insert(pair<string, double>(equations[idx].first, 1 / values[idx]));
                    nodes.insert(pair<string, unordered_map<string, double> >(equations[idx].second, nexts));
                }
            }

            vector<double> res(queries.size());
            for (int idx = 0; idx < (int)queries.size(); idx++) {
                RES = -1.0;
                unordered_set<string> visited;
                dfs(queries[idx].first, 1, queries[idx].second, nodes, visited);
                res[idx] = RES;
            }

            return res;
        }
};
```

It gets AC. But if you want to make it faster, you can add DP array to store the mid result.

Or just compact the path.
