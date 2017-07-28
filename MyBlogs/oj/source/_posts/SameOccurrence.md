---
title: Same Occurrence
date: 2017-07-28 10:00:28
tags:
    - Array
---

> This is one of the HackerRank Week of Code 34. You can see the [detail problem description here](https://www.hackerrank.com/contests/w34/challenges/same-occurrence/problem).

<!--more-->

At first, I don't have any good ideas to solve the problem. Then I use the stupid method, just bruce force.

The code is:

```
using namespace std;

int main() {
    int n, q;
    while (cin >> n >> q) {
        vector<int> nums(n, 0);
        for (int i = 0; i < n; i++) {
            cin >> nums[i];
        }


        int x, y;
        for (int i = 0; i < q; i++) {
            cin >> x >> y;
            int res = 0;
            vector<vector<pair<int, int> > > DP(n + 1, vector<pair<int, int> >(n + 1, pair<int, int>(0, 0)));
            for (int idx = 0; idx < n + 1; idx++) {
                for (int idy = idx + 1; idy < n + 1; idy++) {
                    if (nums[idy - 1] == x) {
                        DP[idx][idy] = DP[idx][idy - 1];
                        DP[idx][idy].first = DP[idx][idy - 1].first + 1;
                    } else if (nums[idy - 1] == y) {
                        DP[idx][idy] = DP[idx][idy - 1];
                        DP[idx][idy].second = DP[idx][idy - 1].second + 1;
                    } else {
                        DP[idx][idy] = DP[idx][idy - 1];
                    }
                    if (DP[idx][idy].first == DP[idx][idy].second) {
                        res = res + 1;
                    }
                }
            }
            cout << res << endl;
        }
    }
    return 0;
}
```

It only pass 4 test cases. Then I find that how about we simplify this problem into that `x n n n n y`, Because we don't need to care about the number which are not given x, y.

So, I try to combine these numbers into one block.

The code comes that:

```
using namespace std;

struct block {
    int startIdx;
    int endIdx;
};

int main() {
    int n, q;
    while (cin >> n >> q) {
        unordered_map<int, vector<int> > numsIdxes;

        vector<int> nums(n);
        for (int i = 0; i < n; i++) {
            cin >> nums[i];
            if (numsIdxes.find(nums[i]) == numsIdxes.end()) {
                vector<int> idxes;
                idxes.push_back(i);
                numsIdxes.insert(pair<int, vector<int> >(nums[i], idxes));
            } else {
                numsIdxes.find(nums[i])->second.push_back(i);
            }
        }

        int x, y;
        map<pair<int, int>, int> MEM;

        for (int i = 0; i < q; i++) {
            cin >> x >> y;
            if (numsIdxes.find(x) == numsIdxes.end()) {
                x = 0;
            }
            if (numsIdxes.find(y) == numsIdxes.end()) {
                y = 0;
            }

            if (x > y) {
                int t = x;
                x = y;
                y = t;
            }

            if (MEM.find(pair<int, int>(x, y)) != MEM.end()) {
                cout << MEM.find(pair<int, int>(x, y))->second << endl;
                continue;
            }

            vector<int> idxes;
            if (numsIdxes.find(x) != numsIdxes.end()) {
                for (auto idx : numsIdxes.find(x)->second) {
                    idxes.push_back(idx);
                }
            }
            if (x != y && numsIdxes.find(y) != numsIdxes.end()) {
                for (auto idx : numsIdxes.find(y)->second) {
                    idxes.push_back(idx);
                }
            }
            sort(idxes.begin(), idxes.end());

            if (idxes.size() == 0) {
                int res = ((1 + n) * n) / 2;
                MEM.insert(pair<pair<int, int>, int>(pair<int, int>(x, y), res));
                cout << res << endl;
                continue;
            }

            idxes.push_back(n);

            vector<block> blks;
            int startIdx = 0;
            for (int i = 0; i < (int)idxes.size(); i++) {
                if (startIdx == n) {
                    break;
                }
                if (startIdx == idxes[i]) {
                    block blk;
                    blk.startIdx = idxes[i];
                    blk.endIdx = idxes[i];
                    blks.push_back(blk);
                    startIdx = idxes[i] + 1;
                } else if (startIdx == idxes[i] - 1) {
                    block blk;
                    blk.startIdx = idxes[i] - 1;
                    blk.endIdx = idxes[i] - 1;
                    blks.push_back(blk);
                    startIdx = idxes[i];
                } else {
                    block blk1, blk2;
                    blk1.startIdx = startIdx;
                    blk1.endIdx = startIdx;
                    blks.push_back(blk1);

                    blk2.startIdx = startIdx + 1;
                    blk2.endIdx = idxes[i] - 1;
                    blks.push_back(blk2);
                    startIdx = idxes[i];
                }
            }

            int res = 0;
            vector<vector<pair<int, int> > > DP(blks.size() + 1, vector<pair<int, int> >(blks.size() + 1, pair<int, int>(0, 0)));
            for (int idx = 0; idx <= (int) blks.size(); idx++) {
                for (int idy = idx + 1; idy <= (int) blks.size(); idy++) {
                    DP[idx][idy] = DP[idx][idy - 1];
                    if (blks[idy - 1].startIdx == blks[idy - 1].endIdx) {
                        if (nums[blks[idy - 1].startIdx] == x) {
                            DP[idx][idy].first++;
                        }
                        if (nums[blks[idy - 1].startIdx] == y) {
                            DP[idx][idy].second++;
                        }
                    }
                    if (DP[idx][idy].first == DP[idx][idy].second) {
                        if (abs(idx - idy) > 1) {
                            res = res + (int) (blks[idx].endIdx - blks[idx].startIdx + 1) * (blks[idy - 1].endIdx - blks[idy - 1].startIdx + 1);
                        } else if (idx == idy - 1) {
                            res = res + (int) ((blks[idx].endIdx - blks[idx].startIdx + 1) * (blks[idx].endIdx - blks[idx].startIdx + 2)) / 2;
                        }
                    }
                }
            }

            MEM.insert(pair<pair<int, int>, int>(pair<int, int>(x, y), res));
            cout << res << endl;
        }
    }
    return 0;
}
```

In this solution, I just make the origin array like this:
```
x [blk 1] y y [blk2]
```

Then, what I should to do is to count the total number.

But if the array is `x y x y y x y x` the solution is still slow again.

Then I try to find the result.

The editional solution is Here: [https://www.hackerrank.com/contests/w34/challenges/same-occurrence/editorial](https://www.hackerrank.com/contests/w34/challenges/same-occurrence/editorial)

Nice soluiton.

