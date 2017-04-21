---
title: Permutations II
date: 2017-04-21 23:16:09
tags:
    - Backtracking
---


> Given a collection of numbers that might contain duplicates, return all possible unique permutations.
>
> For example,
> [1,1,2] have the following unique permutations:
```
[
  [1,1,2],
  [1,2,1],
  [2,1,1]
]
```

<!--more-->

It is Leetcode No.47. It is an old problem. And we can quickly find the solution based on the easy-to-think Backtracking way:

```
using namespace std;

class Solution {
    public:
        set<vector<int> > SET;

        vector<vector<int> > permuteUnique(vector<int>& nums) {
            SET.clear();

            vector<int> current(nums.size());
            vector<bool> visited(nums.size(), false);
            _generate(current, nums, visited);

            vector<vector<int> > res;
            for (auto i : SET) {
                res.push_back(i);
            }

            return res;
        }

        bool isFinish(vector<bool> visited) {
            for (auto i : visited) {
                if (i == false) {
                    return false;
                }
            }
            return true;
        }

        void _generate(vector<int> &current, vector<int> &nums, vector<bool> &visited) {
            if (isFinish(visited)) {
                vector<int> tmp(current);
                SET.insert(tmp);
            } else {
                for (int i = 0; i < (int)nums.size(); i++) {
                    if (!visited[i]) {
                        visited[i] = true;
                        current.push_back(nums[i]);
                        _generate(current, nums, visited);
                        current.pop_back();
                        visited[i] = false;
                    }
                }
            }
        }
};
```

However, it gets TLE on the case which has many same numbers `[3,3,0,0,2,3,2]` for example.

So, we can improve this situation by use map to store the nums;

Then the code becomes:

```
using namespace std;

class Solution {
    public:
        set<vector<int> > SET;
        map<int, int> NUMS;

        vector<vector<int> > permuteUnique(vector<int>& nums) {
            SET.clear();
            NUMS.clear();

            for (auto i : nums) {
                if (NUMS.find(i) != NUMS.end()) {
                    NUMS.find(i)->second++;
                } else {
                    NUMS.insert(pair<int, int>(i, 1));
                }
            }

            vector<int> current;
            vector<bool> visited(nums.size(), false);
            _generate(current, nums.size());

            vector<vector<int> > res;
            for (auto i : SET) {
                res.push_back(i);
            }

            return res;
        }

        void _generate(vector<int> &current, int len) {
            if ((int)current.size() == (int)len) {
                vector<int> tmp(current);
                SET.insert(tmp);
            } else {
                for (auto i : NUMS) {
                    if (i.second > 0) {
                        current.push_back(i.first);
                        NUMS.find(i.first)->second--;
                        _generate(current, len);
                        current.pop_back();
                        NUMS.find(i.first)->second++;
                    }
                }
            }
        }
};
```

By using O(n) more space, we can reduce the time cost. Easy one.

It gets AC.
