---
title: Frog Jump
date: 2017-08-16 14:20:09
tags:
    - Dynamic Programming
---


> A frog is crossing a river. The river is divided into x units and at each unit there may or may not exist a stone. The frog can jump on a stone, but it must not jump into the water.
>
> Given a list of stones' positions (in units) in sorted ascending order, determine if the frog is able to cross the river by landing on the last stone. Initially, the frog is on the first stone and assume the first jump must be 1 unit.
>
> If the frog's last jump was k units, then its next jump must be either k - 1, k, or k + 1 units. Note that the frog can only jump in the forward direction.
>
> **Note:**
> + The number of stones is ≥ 2 and is < 1,100.
> + Each stone's position will be a non-negative integer < 231.
> + The first stone's position is always 0.
>
> **Example 1:**
```
[0,1,3,5,6,8,12,17]

There are a total of 8 stones.
The first stone at the 0th unit, second stone at the 1st unit,
third stone at the 3rd unit, and so on...
The last stone at the 17th unit.

Return true. The frog can jump to the last stone by jumping
1 unit to the 2nd stone, then 2 units to the 3rd stone, then
2 units to the 4th stone, then 3 units to the 6th stone,
4 units to the 7th stone, and 5 units to the 8th stone.
```
> **Example 2:**
```
[0,1,2,3,4,8,9,11]

Return false. There is no way to jump to the last stone as
the gap between the 5th and 6th stone is too large.
```

<!--more-->

Easy one, at first I think that I should find the Max value of jumping.

But you just need to record every jump value in the DP array.

```
using namespace std;


class Solution {
    public:
        bool canCross(vector<int>& stones) {
            if (stones.size() == 1) {
                return true;
            } else if (stones.size() == 2) {
                return stones[1] - stones[0] == 1;
            }

            map<int, int> stoneIdxs;
            for (int idx = 0; idx < (int)stones.size(); idx++) {
                stoneIdxs.insert(pair<int, int>(stones[idx], idx));
            }

            vector<set<int>> DP(stones.size());
            DP[0].insert(0);
            DP[1].insert(1);
            for (int idx = 1; idx < (int)stones.size() - 1; idx++) {
                if (DP[idx].size() == 0) {
                    continue;
                }
                for (auto jump : DP[idx]) {
                    if (jump - 1 > 0 && stoneIdxs.find(stones[idx] + jump - 1) != stoneIdxs.end()) {
                        DP[stoneIdxs.find(stones[idx] + jump - 1)->second].insert(jump - 1);
                    }
                    if (stoneIdxs.find(stones[idx] + jump) != stoneIdxs.end()) {
                        DP[stoneIdxs.find(stones[idx] + jump)->second].insert(jump);
                    }
                    if (stoneIdxs.find(stones[idx] + jump + 1) != stoneIdxs.end()) {
                        DP[stoneIdxs.find(stones[idx] + jump + 1)->second].insert(jump + 1);
                    }
                }
            }

            return DP[stones.size() - 1].size() > 0;
        }
};

```

It gets AC.
