---
title: Coin Path
date: 2017-08-06 13:39:56
tags:
    - Dynamic Programming
    - Depth-first Search
---


> Given an array A (index starts at 1) consisting of N integers: A1, A2, ..., AN and an integer B. The integer B denotes that from any place (suppose the index is i) in the array A, you can jump to any one of the place in the array A indexed i+1, i+2, …, i+B if this place can be jumped to. Also, if you step on the index i, you have to pay Ai coins. If Ai is -1, it means you can’t jump to the place indexed i in the array.
>
> Now, you start from the place indexed 1 in the array A, and your aim is to reach the place indexed N using the minimum coins. You need to return the path of indexes (starting from 1 to N) in the array you should take to get to the place indexed N using minimum coins.
>
> If there are multiple paths with the same cost, return the lexicographically smallest such path.
>
> If it's not possible to reach the place indexed N then you need to return an empty array.
>
> **Example 1:**
```
Input: [1,2,4,-1,2], 2
Output: [1,3,5]
```
> **Example 2:**
```
Input: [1,2,4,-1,2], 1
Output: []
```
> **Note:**
> + Path Pa1, Pa2, ..., Pan is lexicographically smaller than Pb1, Pb2, ..., Pbm, if and only if at the first i where Pai and Pbi differ, Pai < Pbi; when no such i exists, then n < m.
> + A1 >= 0. A2, ..., AN (if exist) will in the range of [-1, 100].
> + Length of A is in the range of [1, 1000].
> + B is in the range of [1, 100].

<!--more-->

At first, I just try to solve the problem with DFS. The code is:

```
using namespace std;

class Solution {
    public:
        int MAXCOST = INT_MAX;
        vector<int> RES;

        void dfs(vector<int> &A, int currentIdx, int B, vector<int>& currentPath, int currentCost) {
            if (A[currentIdx] == -1) {
                return;
            }

            currentPath.push_back(currentIdx + 1);
            currentCost += A[currentIdx];

            if (currentIdx == (int)A.size() - 1) {
                if (currentCost < MAXCOST) {
                    MAXCOST = currentCost;
                    RES.clear();
                    for (int i = 0; i < (int)currentPath.size(); i++) {
                        RES.push_back(currentPath[i]);
                    }
                }
            } else {
                for (int i = 1; i <= B && currentIdx + i < (int)A.size(); i++) {
                    dfs(A, currentIdx + i, B, currentPath, currentCost);
                }
            }

            currentPath.pop_back();
        }

        vector<int> cheapestJump(vector<int>& A, int B) {
            vector<int> currentPath;
            dfs(A, 0, B, currentPath, 0);

            return RES;
        }
};
```

It gets a TLE.

Then I try to solve with DP.

```
using namespace std;

class Solution {
    public:
        vector<int> cheapestJump(vector<int>& A, int B) {
            if (A.size() == 1) {
                return A;
            }
            std::reverse(A.begin(), A.end());

            vector<long long> DP(A.size(), INT_MAX);
            vector<vector<int> > res(A.size());
            DP[0] = A[0];

            for (int idx = 1; idx < (int)A.size(); idx++) {
                if (A[idx] == -1) {
                    DP[idx] = -1;
                    continue;
                }
                for (int idy = max(0, idx - B); idy < idx; idy++) {
                    if (DP[idy] == -1 || DP[idy] == INT_MAX) {
                        continue;
                    }
                    if (DP[idx] > DP[idy] + A[idy]) {
                        res[idx].clear();
                        res[idx].push_back(idy + 1);
                        DP[idx] = DP[idy] + A[idy];
                    } else if (DP[idx] == DP[idy] + A[idy]) {
                        res[idx].push_back(idy + 1);
                    }
                }
            }

            if (DP[A.size() - 1] == INT_MAX || DP[A.size() - 1] == -1) {
                res.clear();
            }
            vector<int> RES;
            int currentIdx = A.size() - 1;
            while (res[currentIdx].size() > 0) {
                RES.push_back(res[currentIdx][res[currentIdx].size() - 1]);
                currentIdx = res[currentIdx][res[currentIdx].size() - 1] - 1;
            }
            std::reverse(RES.begin(), RES.end());
            if (DP[A.size() - 1] != INT_MAX && DP[A.size() - 1] != -1) {
                RES.push_back(A.size());
            }

            for (int i = 0; i < (int)RES.size(); i++) {
                RES[i] = A.size() + 1 - RES[i];
            }
            std::reverse(RES.begin(), RES.end());
            return RES;
        }
};
```

Interesting one, the solution gets AC.
