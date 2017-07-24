---
title: Maximum Length of Pair Chain
date: 2017-07-24 17:12:24
tags:
    - Dynamic Programming
    - Array
---


> You are given n pairs of numbers. In every pair, the first number is always smaller than the second number.
>
> Now, we define a pair (c, d) can follow another pair (a, b) if and only if b < c. Chain of pairs can be formed in this fashion.
>
> Given a set of pairs, find the length longest chain which can be formed. You needn't use up all the given pairs. You can select pairs in any order.
>
> **Example 1:**
```
Input: [[1,2], [2,3], [3,4]]
Output: 2
Explanation: The longest chain is [1,2] -> [3,4]
```
> **Note:**
>
> + The number of given pairs will be in the range [1, 1000].

<!--more-->

This is Leetcode No.646. It also a problem in the leetcode weekly contest. During the contest, the method I solve the problem is using DFS.

The code is as following:

```
using namespace std;

class Solution {
    public:
        int RES;

        void dfs(vector<pair<int, int> > &pairs, int currentIdx, int currentNum) {
            if (currentIdx == (int)pairs.size()) {
                RES = max(currentNum, RES);
                return;
            }
            for (int i = currentIdx; i < (int)pairs.size(); i++) {
                if (pairs[i].first > pairs[currentIdx].second) {
                    dfs(pairs, i, currentNum + 1);
                }
            }
        }

        int findLongestChain(vector<vector<int> >& pairs) {
            map<int, int> NUMS;
            int minNum = INT_MAX, maxNum = INT_MIN;
            for (int i = 0; i < (int)pairs.size(); i++) {
                minNum = min(minNum, pairs[i][0]);
                maxNum = max(maxNum, pairs[i][1]);
                if (NUMS.find(pairs[i][0]) != NUMS.end()) {
                    NUMS[pairs[i][0]] = min(NUMS[pairs[i][0]], pairs[i][1]);
                }
            }

            vector<pair<int, int> > PAIRS;
            for (auto i : NUMS) {
                PAIRS.push_back(pair<int, int>(i.first, i.second));
            }
            RES = 0;
            for (int i = 0; i < (int)PAIRS.size(); i++) {
                dfs(PAIRS, i, 1);
            }
            return RES;
        }
};
```

It gets TLE. Because we can find that we count the nodes more than once.

Then I come up with a DP solution:

```
using namespace std;

class Solution {
    public:
        int findLongestChain(vector<vector<int> >& pairs) {
            sort(pairs.begin(), pairs.end());

            vector<int> DP(pairs.size(), 1);
            for (int i = pairs.size() - 2; i >= 0; i--) {
                for (int j = i + 1; j < (int)pairs.size() ; j++) {
                    if (pairs[i][1] < pairs[j][0]) {
                        DP[i] = max(DP[i], DP[j] + 1);
                    }
                }
            }

            int MAX = INT_MIN;
            for (int i = 0; i < (int)DP.size(); i++) {
                MAX = max(DP[i], MAX);
            }
            return MAX;
        }
};
```

It gets AC.
