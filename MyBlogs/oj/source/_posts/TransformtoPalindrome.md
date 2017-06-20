---
title: Transform to Palindrome
date: 2017-06-20 15:39:28
tags:
    - Depth-first Search
    - Dynamic Programming
---

> The description of the problem you can see from [HERE](https://www.hackerrank.com/contests/w33/challenges/transform-to-palindrome/problem)

<!--more-->

It is the third problem of Week of Code 33. The solution can be divided into two part.

+ The first one, you should find all the connected components.
+ The second part, you should be able to find the longest palindrome from the given string.

You can use DFS to find all the connect parts like:

```
void dfs(int currentIdx, vector<bool> &visited, unordered_map<int, unordered_set<int> > MAP, unordered_set<int> &group) {
    vector<int> nexts;
    nexts.push_back(currentIdx);

    while (nexts.size() > 0) {
        int nextIdx = nexts[nexts.size() - 1];
        nexts.pop_back();

        group.insert(nextIdx);
        visited[nextIdx] = true;

        if (MAP.find(nextIdx) != MAP.end()) {
            for (auto next : MAP.find(nextIdx)->second) {
                if (!visited[next]) {
                    nexts.push_back(next);
                }
            }
        }
    }
}
```

Then you can transform the given string into a modified one:

```
    vector<int> nums(m);
    for (int i = 0; i < m; i++) {
        cin >> nums[i];
        nums[i] -= 1;
        bool isFindInDP = false;
        for (int idx = 0; idx < (int)DP.size(); idx++) {
            if (DP[idx].find(nums[i]) != DP[idx].end()) {
                nums[i] = -(idx + 1);
                isFindInDP = true;
                break;
            }
        }
    }
```

Then use the LCS function to find the longest palindrome.

```
int LCS(vector<int> nums) {
    vector<int> rev = nums;
    reverse(rev.begin(), rev.end());
    int size = nums.size();
    vector<vector<int> > _DP(size + 1, vector<int>(size + 1));
    for (int i = 1; i <= size; ++i) {
        for (int j = 1; j <= size; ++j) {
            if (nums[i - 1] == rev[j - 1]) {
                _DP[i][j] = _DP[i - 1][j - 1] + 1;
            } else if (_DP[i-1][j] >= _DP[i][j-1]) {
                _DP[i][j] = _DP[i - 1][j];
            } else if (_DP[i - 1][j] < _DP[i][j - 1]) {
                _DP[i][j] = _DP[i][j - 1];
            }
        }
    }

    return _DP[size][size];
}
```

So, the final solution is:

```
using namespace std;

int LCS(vector<int> nums) {
    vector<int> rev = nums;
    reverse(rev.begin(), rev.end());
    int size = nums.size();
    vector<vector<int> > _DP(size + 1, vector<int>(size + 1));
    for (int i = 1; i <= size; ++i) {
        for (int j = 1; j <= size; ++j) {
            if (nums[i - 1] == rev[j - 1]) {
                _DP[i][j] = _DP[i - 1][j - 1] + 1;
            } else if (_DP[i-1][j] >= _DP[i][j-1]) {
                _DP[i][j] = _DP[i - 1][j];
            } else if (_DP[i - 1][j] < _DP[i][j - 1]) {
                _DP[i][j] = _DP[i][j - 1];
            }
        }
    }

    return _DP[size][size];
}

vector<unordered_set<int> > DP;

void dfs(int currentIdx, vector<bool> &visited, unordered_map<int, unordered_set<int> > MAP, unordered_set<int> &group) {
    vector<int> nexts;
    nexts.push_back(currentIdx);

    while (nexts.size() > 0) {
        int nextIdx = nexts[nexts.size() - 1];
        nexts.pop_back();

        group.insert(nextIdx);
        visited[nextIdx] = true;

        if (MAP.find(nextIdx) != MAP.end()) {
            for (auto next : MAP.find(nextIdx)->second) {
                if (!visited[next]) {
                    nexts.push_back(next);
                }
            }
        }
    }
}

int main() {
    int n, k, m;
    while (cin >> n >> k >> m) {
        DP.clear();

        unordered_map<int, unordered_set<int> > MAP;
        for (int i = 0; i < k; i++) {
            int x, y;
            cin >> x >> y;
            x = x - 1;
            y = y - 1;

            if (MAP.find(x) != MAP.end()) {
                MAP.find(x)->second.insert(y);
            } else {
                unordered_set<int> nexts;
                nexts.insert(y);
                MAP.insert(pair<int, unordered_set<int> >(x, nexts));
            }
            if (MAP.find(y) != MAP.end()) {
                MAP.find(y)->second.insert(x);
            } else {
                unordered_set<int> nexts;
                nexts.insert(x);
                MAP.insert(pair<int, unordered_set<int> >(y, nexts));
            }
        }

        vector<bool> visited(n, false);
        for (int currentIdx = 0; currentIdx < n; currentIdx++) {
            unordered_set<int> group;
            if (!visited[currentIdx]) {
                dfs(currentIdx, visited, MAP, group);
            }
            if (group.size() > 1) {
                DP.push_back(group);
            }
        }

        vector<int> nums(m);
        for (int i = 0; i < m; i++) {
            cin >> nums[i];
            nums[i] -= 1;
            bool isFindInDP = false;
            for (int idx = 0; idx < (int)DP.size(); idx++) {
                if (DP[idx].find(nums[i]) != DP[idx].end()) {
                    nums[i] = -(idx + 1);
                    isFindInDP = true;
                    break;
                }
            }
        }

        cout << LCS(nums) << endl;
    }

    return 0;
}
```

It gets AC.
