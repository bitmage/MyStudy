---
title: Jump Game II
date: 2017-05-18 14:09:16
tags:
    - Array
    - Greedy
    - Breadth-first Search
---

> Given an array of non-negative integers, you are initially positioned at the first index of the array.
>
> Each element in the array represents your maximum jump length at that position.
>
> Your goal is to reach the last index in the minimum number of jumps.
>
> For example:
```
Given array A = [2,3,1,1,4]

The minimum number of jumps to reach the last index is 2.
    (Jump 1 step from index 0 to 1, then 3 steps to the last index.)
```

<!--more-->
This is Leetcode No.45. It is a old problem, but when I join the HackerRank Week of Code 32, I find that the third problem is one extended from this problem.

So, I will write the solution about this problem first.

First, you can quickly write the BFS solution like below:

```
using namespace std;

class Solution {
    public:
        int jump(vector<int>& nums) {
            vector<int> steps(nums.size(), nums.size());
            steps[0] = 0;
            for (int currentIdx = 0; currentIdx < (int)nums.size(); currentIdx++) {
                for (int step = 1; step <= nums[currentIdx]; step++) {
                    int nextIdx = currentIdx + step >= (int)nums.size() ? (int)nums.size() - 1 : currentIdx + step;
                    steps[nextIdx] = min(steps[currentIdx] + 1, steps[nextIdx]);
                }
            }

            return steps[nums.size() - 1];
        }
};
```

But it gets a TLE. So, we should start a Greedy solution. For example, when we are at index 1, where we can reach is in the range between i and i+nums[i].

So, before we can reach the farthest point, what we should do is to reset the farthest point when we at i + 1.

then the code becomes like these:

```
using namespace std;

class Solution {
    public:
        int jump(vector<int>& nums) {
            int currentEnd = 0, reachPoint = 0, step = 0;
            for (int i = 0; i < (int)nums.size() - 1; i++) {
                reachPoint = max(i + nums[i], reachPoint);
                if (i == currentEnd) {
                    step++;
                    currentEnd = reachPoint;
                }
            }
            return step;
        }
};
```

 It gets AC.
