---
title: Cut Off Trees for Golf Event
date: 2017-09-13 14:58:04
tags:
    - Breadth-first Search
    - Amazon
---

> You are asked to cut off trees in a forest for a golf event. The forest is represented as a non-negative 2D map, in this map:
>
> + 0 represents the obstacle can't be reached.
> + 1 represents the ground can be walked through.
> + The place with number bigger than 1 represents a tree can be walked through, and this positive number represents the tree's height.
>
> You are asked to cut off all the trees in this forest in the order of tree's height - always cut off the tree with lowest height first. And after cutting, the original place has the tree will become a grass (value 1).
>
> You will start from the point (0, 0) and you should output the minimum steps you need to walk to cut off all the trees. If you can't cut off all the trees, output -1 in that situation.
>
> You are guaranteed that no two trees have the same height and there is at least one tree needs to be cut off.
>
> **Example 1:**
```
Input:
    [
        [1,2,3],
        [0,0,4],
        [7,6,5]
    ]
Output: 6
```
> **Example 2:**
```
Input:
    [
        [1,2,3],
        [0,0,0],
        [7,6,5]
    ]
Output: -1
```
> **Example 3:**
```
Input:
    [
        [2,3,4],
        [0,0,5],
        [8,7,6]
    ]
Output: 6
Explanation: You started from the point (0,0) and you can cut off the tree in (0,0) directly without walking
```

<!--more-->

At first, I misunderstand the problem description. I think I should find the shortest way, but the problem is much easier.

You just need to sort the trees and try to find the step from trees[idx] to trees[idx + 1].

The code is:

```
using namespace std;

class Solution {
public:

    int canMoveOn(vector<pair<int, pair<int, int>>> &pos, int idx, vector<vector<int>> &map) {
        int px = pos[idx].second.first, py = pos[idx].second.second, nx = pos[idx + 1].second.first, ny = pos[idx + 1].second.second;

        list<pair<int, pair<int, int>>> nexts;
        nexts.push_back(pair<int, pair<int, int>>(0, pair<int, int>(px, py)));

        vector<vector<bool>> visited(map.size(), vector<bool>(map[0].size(), false));
        visited[px][py] = true;

        while (!nexts.empty()) {
            int cx = nexts.front().second.first, cy = nexts.front().second.second;

            if (cx == nx && cy == ny) {
                return nexts.front().first;
            }

            // up
            if (cx - 1 >= 0 && map[cx - 1][cy] > 0 && !visited[cx - 1][cy]) {
                nexts.push_back(pair<int, pair<int, int>>(nexts.front().first + 1, pair<int, int>(cx - 1, cy)));
                visited[cx - 1][cy] = true;
            }
            // down
            if (cx + 1 < (int)map.size() && map[cx + 1][cy] > 0 && !visited[cx + 1][cy]) {
                nexts.push_back(pair<int, pair<int, int>>(nexts.front().first + 1, pair<int, int>(cx + 1, cy)));
                visited[cx + 1][cy] = true;

            }
            // left
            if (cy - 1 >= 0 && map[cx][cy - 1] > 0 && !visited[cx][cy - 1]) {
                nexts.push_back(pair<int, pair<int, int>>(nexts.front().first + 1, pair<int, int>(cx, cy - 1)));
                visited[cx][cy - 1] = true;
            }
            // right
            if (cy + 1 < (int)map[0].size() && map[cx][cy + 1] > 0 && !visited[cx][cy + 1]) {
                nexts.push_back(pair<int, pair<int, int>>(nexts.front().first + 1, pair<int, int>(cx, cy + 1)));
                visited[cx][cy + 1] = true;
            }
            nexts.pop_front();
        }
        return -1;
    }

    int cutOffTree(vector<vector<int>>& forest) {
        vector<pair<int, pair<int, int>>> pos;

        pos.push_back(pair<int, pair<int, int>>(0, pair<int, int>(0, 0)));

        for (int x = 0; x < (int)forest.size(); x++) {
            for (int y = 0; y < (int)forest[0].size(); y++) {
                if (forest[x][y] > 1) {
                    pos.push_back(pair<int, pair<int, int>>(forest[x][y], pair<int, int>(x, y)));
                }
            }
        }

        sort(pos.begin(), pos.end());

        int res = 0;
        for (int i = 0; i < (int)pos.size() - 1; i++) {
            int step = canMoveOn(pos, i, forest);
            // cout << "from " << pos[i].second.first << ',' << pos[i].second.second << " to " << pos[i + 1].second.first <<','<<pos[i+1].second.second<< endl;
            // cout << step << endl;

            if (step >= 0) {
                res += step;
            } else {
                res = -1;
                break;
            }
        }
        return res;
    }
};
```

It gets AC.
