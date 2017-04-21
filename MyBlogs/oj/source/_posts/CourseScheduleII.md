---
title: Course Schedule II
date: 2017-04-14 11:36:27
tags:
    - Graph
    - Depth-first Search
    - Breadth-first Search
    - Topological Sort
---


> There are a total of n courses you have to take, labeled from 0 to n - 1.
>
> Some courses may have prerequisites, for example to take course 0 you have to first take course 1, which is expressed as a pair: [0,1]
>
> Given the total number of courses and a list of prerequisite pairs, return the ordering of courses you should take to finish all courses.
>
> There may be multiple correct orders, you just need to return one of them. If it is impossible to finish all courses, return an empty array.
>
> For example:
>```
2, [[1,0]]
```
> There are a total of 2 courses to take. To take course 1 you should have finished course 0. So the correct course order is [0,1]
>```
4, [[1,0],[2,0],[3,1],[3,2]]
```
> There are a total of 4 courses to take. To take course 3 you should have finished both courses 1 and 2. Both courses 1 and 2 should be taken after you finished course 0. So one correct course order is [0,1,2,3]. Another correct ordering is[0,2,1,3].
>
> Note:
>
> + The input prerequisites is a graph represented by a list of edges, not adjacency matrices. Read more about how a graph is represented.
> + You may assume that there are no duplicate edges in the input prerequisites.

<!--more-->

This is Leetcode No.210. It is a classic Graph problem. Just using BFS or DFS, you can solve this problem.

```
using namespace std;

class Solution {
    public:
        vector<int> findOrder(int numCourses, vector<pair<int, int> >& prerequisites) {
            vector<set<int> > graph = make_graph(numCourses, prerequisites);
            vector<int> toposort;
            vector<bool> onpath(numCourses, false), visited(numCourses, false);
            for (int i = 0; i < numCourses; i++)
                if (!visited[i] && dfs(graph, i, onpath, visited, toposort))
                    return {};
            reverse(toposort.begin(), toposort.end());
            return toposort;
        }
    private:
        vector<set<int> > make_graph(int numCourses, vector<pair<int, int> >& prerequisites) {
            vector<set<int> > graph(numCourses);
            for (auto pre : prerequisites)
                graph[pre.second].insert(pre.first);
            return graph;
        }
        bool dfs(vector<set<int> >& graph, int node, vector<bool>& onpath, vector<bool>& visited, vector<int>& toposort) {
            if (visited[node]) return false;
            onpath[node] = visited[node] = true;
            for (int neigh : graph[node])
                if (onpath[neigh] || dfs(graph, neigh, onpath, visited, toposort))
                    return true;
            toposort.push_back(node);
            return onpath[node] = false;
        }
};
```

It gets AC.
