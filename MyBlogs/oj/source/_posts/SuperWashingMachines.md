---
title: Super Washing Machines
date: 2017-05-08 14:42:22
tags:
    - Math
    - Dynamic Programming
---

> You have n super washing machines on a line. Initially, each washing machine has some dresses or is empty.
>
> For each move, you could choose any m (1 ≤ m ≤ n) washing machines, and pass one dress of each washing machine to one of its adjacent washing machines at the same time .
>
> Given an integer array representing the number of dresses in each washing machine from left to right on the line, you should find the minimum number of moves to make all the washing machines have the same number of dresses. If it is not possible to do it, return -1.
>
> **Example1**
```
Input: [1,0,5]

Output: 3

Explanation:
1st move:    1     0 <-- 5    =>    1     1     4
2nd move:    1 <-- 1 <-- 4    =>    2     1     3
3rd move:    2     1 <-- 3    =>    2     2     2
```
> **Example2**
```
Input: [0,3,0]

Output: 2

Explanation:
1st move:    0 <-- 3     0    =>    1     2     0
2nd move:    1     2 --> 0    =>    1     1     1
```
> **Example3**
```
Input: [0,2,0]

Output: -1

Explanation:
It's impossible to make all the three washing machines have the same number of dresses.
```
> **Note:**
>
> + The range of n is [1, 10000].
> + The range of dresses number in a super washing machine is [0, 1e5].
<!--more-->
It is Leetcode No.517 and it is a hard problem. The reason it is a hard problem I think is that the solution is fully based on the Math progress.

For a single machine, necessary operations is to transfer dresses from one side to another until sum of both sides and itself reaches the average number. We can calculate (contained dresses) - (required dresses) of each side as L and R:

+ L < 0 && R < 0:
> both sides lacks dresses, and we can only export one dress from current machines at a time, so result is abs(L) + abs(R)
+ L > 0 && R > 0:
> both sides contains too many dresses, and we can import dresses from both sides at the same time, so result is max(abs(L), abs(R))
+ L < 0 && R > 0 or L > 0 && R < 0:
> the side with a larger value will import/export its extra dresses from/to current machine or other side, so result is max(abs(L), abs(R))


```
using namespace std;

class Solution {
    public:
        int findMinMoves(vector<int>& machines) {
            if (machines.size() <= 1) {
                return machines.size() - 1;
            }

            int sum = 0, avg = 0;
            vector<int> DP;

            DP.push_back(0);
            for (auto i : machines) {
                sum += i;
                DP.push_back(sum);
            }

            DP.push_back(0);
            if (sum % machines.size() != 0) {
                return -1;
            }
            avg = sum / machines.size();

            int res = INT_MIN;
            for (int idx = 1; idx < (int)machines.size() + 1; idx++) {
                int L = DP[idx - 1] - (idx - 1) * avg;
                int R = (DP[machines.size()] - DP[idx]) - (machines.size() - idx) * avg;

                if (L > 0 && R > 0) {
                    res = max(res, max(abs(L), abs(R)));
                } else if ((L > 0 && R < 0) || (L < 0 && R > 0)) {
                    res = max(res, max(abs(L), abs(R)));
                } else if (L <= 0 && R <= 0)  {
                    res = max(res, abs(L) + abs(R));
                }
            }

            return res;
        }
};
```

It gets AC.
