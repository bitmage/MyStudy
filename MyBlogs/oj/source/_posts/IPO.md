---
title: IPO
date: 2017-05-11 10:47:13
tags:
    - Heap
    - Greedy
---

> Suppose LeetCode will start its IPO soon. In order to sell a good price of its shares to Venture Capital, LeetCode would like to work on some projects to increase its capital before the IPO. Since it has limited resources, it can only finish at most k distinct projects before the IPO. Help LeetCode design the best way to maximize its total capital after finishing at most k distinct projects.
>
> You are given several projects. For each project i, it has a pure profit Pi and a minimum capital of Ci is needed to start the corresponding project. Initially, you have W capital. When you finish a project, you will obtain its pure profit and the profit will be added to your total capital.
>
> To sum up, pick a list of at most k distinct projects from given projects to maximize your final capital, and output your final maximized capital.
>
> **Example 1:**
```
Input: k=2, W=0, Profits=[1,2,3], Capital=[0,1,1].

Output: 4

Explanation: Since your initial capital is 0, you can only start the project indexed 0.
             After finishing it you will obtain profit 1 and your capital becomes 1.
             With capital 1, you can either start the project indexed 1 or the project indexed 2.
             Since you can choose at most 2 projects, you need to finish the project indexed 2 to get the maximum capital.
             Therefore, output the final maximized capital, which is 0 + 1 + 3 = 4.
```
> **Note:**
>
> + You may assume all numbers in the input are non-negative integers.
> + The length of Profits array and Capital array will not exceed 50,000.
> + The answer is guaranteed to fit in a 32-bit signed integer.

<!--more-->

This is Leetcode No.502. This is a classical 01 Package problem. But it can't be solved by DP method, because the number of the projects is too large.

So, we should use Greedy here. We sort the projects by its profit and try to find the max profit we can get.

The code can be like below:

```
using namespace std;

struct Project {
    int profit;
    int capital;
    bool canBuy;

    bool operator <(Project a) const  {  return profit > a.profit; }
    bool operator >(Project a) const  {  return profit < a.profit; }
};

class Solution {
    public:
        int findMaximizedCapital(int times, int capital, vector<int>& Profits, vector<int>& Capitals) {
            vector<Project> projects;

            for (int idx = 0; idx < (int)Profits.size(); idx++) {
                Project project;
                project.profit = Profits[idx];
                project.capital = Capitals[idx];
                project.canBuy = true;

                projects.push_back(project);
            }

            sort(projects.begin(), projects.end());

            while (times > 0) {
                bool isBuy = false;
                for (int idx = 0; idx < (int)projects.size(); idx++) {
                    if (projects[idx].canBuy && capital >= projects[idx].capital) {
                        projects[idx].canBuy = false;
                        capital += projects[idx].profit;
                        times--;
                        isBuy = true;
                        break;
                    }
                }
                if (!isBuy) {
                    break;
                }
            }

            return capital;
        }
};
```

But I get TLE here. Because everytime I just try to search the whole projects. We can remove the projects we have buy from the projects.

Then I use list instead of vector to store the projects to remove the item I used each time, to reduce the time cost.

The code comes:

```
using namespace std;

struct Project {
    int profit;
    int capital;

    bool operator <(Project a) const  {  return profit > a.profit; }
    bool operator >(Project a) const  {  return profit < a.profit; }
};

class Solution {
    public:
        int findMaximizedCapital(int times, int capital, vector<int>& Profits, vector<int>& Capitals) {
            list<Project> projects;

            for (int idx = 0; idx < (int)Profits.size(); idx++) {
                Project project;
                project.profit = Profits[idx];
                project.capital = Capitals[idx];

                projects.push_back(project);
            }

            projects.sort();

            while (times > 0) {
                bool isBuy = false;
                for (list<Project>::iterator iter = projects.begin(); iter != projects.end(); iter++) {
                    if (capital >= iter->capital) {
                        capital += iter->profit;
                        times--;
                        isBuy = true;
                        projects.erase(iter);
                        break;
                    }
                }

                if (!isBuy) {
                    break;
                }
            }

            return capital;
        }
};
```

So, it gets AC.
