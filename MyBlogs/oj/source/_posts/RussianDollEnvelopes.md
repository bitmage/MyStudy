---
title: Russian Doll Envelopes
date: 2017-08-17 15:58:08
tags:
    - Dynamic Programming
    - Binary Search
---

> You have a number of envelopes with widths and heights given as a pair of integers (w, h). One envelope can fit into another if and only if both the width and height of one envelope is greater than the width and height of the other envelope.
>
> What is the maximum number of envelopes can you Russian doll? (put one inside other)
>
> **Example:**
```
Given envelopes = [[5,4],[6,4],[6,7],[2,3]]

the maximum number of envelopes you can Russian doll is 3

    ([2,3] => [5,4] => [6,7]).
```

<!--more-->

It is a easy one. You just need to know that you can solve the problem with DFS.

But, it will be TLE.

So, use a DP array to store the middle value is important.

```
using namespace std;

class Solution {
public:
    int maxEnvelopes(vector<pair<int, int>>& envelopes) {
        sort(envelopes.begin(), envelopes.end());

        vector<int> DP(envelopes.size(), 1);

        for (int idx = envelopes.size() - 2; idx >= 0; idx--) {
            for (int idy = idx + 1; idy < (int)envelopes.size(); idy++) {
                if (envelopes[idx].first < envelopes[idy].first && envelopes[idx].second < envelopes[idy].second) {
                    DP[idx] = max(DP[idx], 1 + DP[idy]);
                }
            }
        }

        int res = 0;
        for (int i = 0; i < (int)envelopes.size(); i++) {
            res = max(res, DP[i]);
        }
        return res;
    }
};

```

It gets AC. But you can use a Binary Search when you want to find the nextIdx.


