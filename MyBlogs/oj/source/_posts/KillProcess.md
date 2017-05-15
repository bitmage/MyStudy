---
title: Kill Process
date: 2017-05-15 14:41:29
tags:
    - Tree
    - Queue
    - Depth-first Search
---

> Given n processes, each process has a unique PID (process id) and its PPID (parent process id).
>
> Each process only has one parent process, but may have one or more children processes. This is just like a tree structure. Only one process has PPID that is 0, which means this process has no parent process. All the PIDs will be distinct positive integers.
>
> We use two list of integers to represent a list of processes, where the first list contains PID for each process and the second list contains the corresponding PPID.
>
> Now given the two lists, and a PID representing a process you want to kill, return a list of PIDs of processes that will be killed in the end. You should assume that when a process is killed, all its children processes will be killed. No order is required for the final answer.
>
> **Example 1:**
```
Input:
pid =  [1, 3, 10, 5]
ppid = [3, 0, 5, 3]
kill = 5
Output: [5,10]
Explanation:
          3
        /   \
       1     5
             /
           10
Kill 5 will also kill 10.
```
> **Note:**
> + The given kill id is guaranteed to be one of the given PIDs.
> + n >= 1.

<!--more-->

This is Leetcode No.582, and it is also a problem in the Leetcode Weekly Contest. The tag is Queue but I use the DFS instead.

The code is as following:

```
using namespace std;

struct Node {
    int parent;
    int value;
    vector<int> nexts;
};

class Solution {
    public:
        vector<int> res;
        map<int, vector<int> > PATHS;

        vector<int> killProcess(vector<int>& pids, vector<int>& ppids, int kill) {
            res.clear();

            for (int i = 0; i < (int)pids.size(); i++) {
                if (PATHS.find(ppids[i]) != PATHS.end()) {
                    PATHS.find(ppids[i])->second.push_back(pids[i]);
                } else {
                    vector<int> nexts;
                    nexts.push_back(pids[i]);
                    PATHS.insert(pair<int, vector<int> >(ppids[i], nexts));
                }
            }
            res.push_back(kill);
            DFS(kill);

            return res;
        }

        void DFS(int kill) {
            if (PATHS.find(kill) != PATHS.end()) {
                for (int i = 0; i < (int)PATHS.find(kill)->second.size(); i++) {
                    int nextKill = PATHS.find(kill)->second[i];
                    res.push_back(nextKill);
                    DFS(nextKill);
                }
            }
        }
};
```

It gets AC, but it also can be solved with a queue.
