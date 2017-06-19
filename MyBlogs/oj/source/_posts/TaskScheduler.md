---
title: Task Scheduler
date: 2017-06-19 16:26:59
tags:
    - Array
    - Greedy
    - Queue
---


> Given a char array representing tasks CPU need to do. It contains capital letters A to Z where different letters represent different tasks.Tasks could be done without original order. Each task could be done in one interval. For each interval, CPU could finish one task or just be idle.
>
> However, there is a non-negative cooling interval n that means between two same tasks, there must be at least n intervals that CPU are doing different tasks or just be idle.
>
> You need to return the least number of intervals the CPU will take to finish all the given tasks.
>
> **Example 1:**
```
Input: tasks = ['A','A','A','B','B','B'], n = 2
Output: 8
Explanation: A -> B -> idle -> A -> B -> idle -> A -> B.
```
> **Note:**
> + The number of tasks is in the range [1, 10000].
> + The integer n is in the range [0, 100].

<!--more-->

This is Leetcode No.621. And it is also the last problem in the recent Leetcode weekly contest.

The solution is simulate the progress of the cpu.

So, I start a scheduler of the cpu, and try to find the task which appears the most times to start the circle.

```
using namespace std;

class Solution {
    public:
        int leastInterval(vector<char>& tasks, int num) {
            int res = 0;
            vector<int> DP(26, 0);

            for (int i = 0; i < (int)tasks.size(); i++) {
                DP[tasks[i] - 'A']++;
            }
            sort(DP.begin(), DP.end());

            do {
                int currentNum = 0;
                while (currentNum <= num) {
                    if (DP[25] == 0) {
                        break;
                    }
                    if (currentNum < 26 && DP[25 - currentNum] > 0) {
                        DP[25 - currentNum]--;
                    }
                    currentNum++;
                    res++;
                }
                sort(DP.begin(), DP.end());
            } while (DP[25] > 0);

            return res;
        }
};
```

So, its time complexity is O(time) depend on the result time. And it gets AC.
