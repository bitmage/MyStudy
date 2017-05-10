---
title: Freedom Trail
date: 2017-05-10 12:14:54
tags:
    - Depth-first Search
    - Dynamic Programming
    - Divide and Conquer
---


> In the video game Fallout 4, the quest "Road to Freedom" requires players to reach a metal dial called the "Freedom Trail Ring", and use the dial to spell a specific keyword in order to open the door.
>
> Given a string ring, which represents the code engraved on the outer ring and another string key, which represents the keyword needs to be spelled. You need to find the minimum number of steps in order to spell all the characters in the keyword.
> Initially, the first character of the ring is aligned at 12:00 direction. You need to spell all the characters in the string key one by one by rotating the ring clockwise or anticlockwise to make each character of the string key aligned at 12:00 direction and then by pressing the center button.
> At the stage of rotating the ring to spell the key character key[i]:
>
> + You can rotate the ring clockwise or anticlockwise one place, which counts as 1 step. The final purpose of the rotation is to align one of the string ring's characters at the 12:00 direction, where this character must equal to the character key[i].
> + If the character key[i] has been aligned at the 12:00 direction, you need to press the center button to spell, which also counts as 1 step. After the pressing, you could begin to spell the next character in the key (next stage), otherwise, you've finished all the spelling.
>
> **Example:**
```
Input: ring = "godding", key = "gd"
Output: 4
Explanation:
  For the first key character 'g', since it is already in place, we just need 1 step to spell this character.
  For the second key character 'd', we need to rotate the ring "godding" anticlockwise by two steps to make it become "ddinggo".
  Also, we need 1 more step for spelling.
  So the final output is 4.
```
><!--more-->
> **Note:**
>
> + Length of both ring and key will be in range 1 to 100.
> + There are only lowercase letters in both strings and might be some duplcate characters in both strings.
> + It's guaranteed that string key could always be spelled by rotating the string ring.

This is Leetcode No.514. It is a hard problem.

At first I quickly find the easy-to-think solution:

```
using namespace std;

class Solution {
    public:
        map<char, vector<int> > CHARS;
        int res;

        int findRotateSteps(string ring, string key) {
            res = INT_MAX;
            CHARS.clear();

            for (int i = 0; i < (int)ring.length(); i++) {
                if (CHARS.find(ring[i]) != CHARS.end()) {
                    CHARS.find(ring[i])->second.push_back(i);
                } else {
                    vector<int> IDXES;
                    IDXES.push_back(i);
                    CHARS.insert(pair<int, vector<int> >(ring[i], IDXES));
                }
            }

            _doit(0, 0, 0, ring, key);

            return res + key.size();
        }

        void _doit(int idx, int currentSteps, int currentIdx, string ring, string key) {
            if (idx == (int)key.length()) {
                res = min(res, currentSteps);
                return;
            }
            vector<int> IDXES = CHARS.find(key[idx])->second;
            for (auto targetIdx : IDXES) {
                int nextSteps = min((int)((ring.length() - abs(targetIdx - currentIdx))), (int)abs(targetIdx - currentIdx));
                _doit(idx + 1, currentSteps + nextSteps, targetIdx, ring, key);
            }
        }
};
```

It absolutely gets a TLE. Then I use a DP map to store the middle result, to reduce the branches.

```
using namespace std;

class Solution {
    public:
        map<char, vector<int> > CHARS;
        map<pair<int, int>, int> DP;
        int res;

        int findRotateSteps(string ring, string key) {
            res = INT_MAX;
            CHARS.clear();
            DP.clear();

            for (int i = 0; i < (int)ring.length(); i++) {
                if (CHARS.find(ring[i]) != CHARS.end()) {
                    CHARS.find(ring[i])->second.push_back(i);
                } else {
                    vector<int> IDXES;
                    IDXES.push_back(i);
                    CHARS.insert(pair<int, vector<int> >(ring[i], IDXES));
                }
            }

            _doit(0, 0, 0, ring, key);

            return res + key.size();
        }

        void _doit(int idx, int currentSteps, int currentIdx, string ring, string key) {
            if (idx == (int)key.length()) {
                res = min(res, currentSteps);
                return;
            }
            vector<int> IDXES = CHARS.find(key[idx])->second;
            for (auto targetIdx : IDXES) {
                int nextSteps = min((int)((ring.length() - abs(targetIdx - currentIdx))), (int)abs(targetIdx - currentIdx));
                if (DP.find(pair<int, int>(idx, targetIdx)) != DP.end()) {
                    if (currentSteps + nextSteps > DP.find(pair<int, int>(idx, targetIdx))->second) {
                        continue;
                    } else {
                        DP.find(pair<int, int>(idx, targetIdx))->second = currentSteps + nextSteps;
                    }
                } else {
                    DP.insert(pair<pair<int, int>, int>(pair<int, int>(idx, targetIdx), currentSteps + nextSteps));
                }
                _doit(idx + 1, currentSteps + nextSteps, targetIdx, ring, key);
            }
        }
};
```

But it still gets a TLE. Which means I have the wrong DP method. Because I just use the DP map to store the <key[idx], nextIdx> to mark the least value. Maybe I should use the DP to store the least value of key[idx].

But the final idea is to use a DP[ring.size()][key.size()] array to store the result, use the `ring = "fgtng" key = "tnggf"` as an example:

```
t   n   g   g   f
.   .   .   .   5   f
.   .   5   5   .   g
2   .   .   .   .   t
.   3	.   .	.   n
.   .   4   4   .   g
```

So the result is 5 + key.size()

Here comes the code:

```
using namespace std;

class Solution {
    public:
        int findRotateSteps(string ring, string key) {
            vector<vector<int> > DP(ring.size(), vector<int>(key.size() + 1, INT_MAX));

            int currentIdx = 0, res = INT_MAX;
            for (int idx = 0; idx < (int)ring.size(); idx++) {
                if (ring[idx] == key[0]) {
                    DP[idx][0] = min(idx, (int)ring.size() - idx);
                }
            }

            for (int idy = 1; idy < (int)key.size(); idy++) {
                for (int idx = 0; idx < (int)ring.size(); idx++) {
                    if (key[idy] == ring[idx]) {
                        for (int idz = 0; idz < (int)ring.size(); idz++) {
                            if (DP[idz][idy - 1] != INT_MAX) {
                                currentIdx = idz;
                                DP[idx][idy] = min(DP[idx][idy], DP[idz][idy - 1] + min(abs(currentIdx - idx), abs((int)ring.size() - (int)abs(currentIdx - idx))));
                            }
                        }
                    }
                }
                // _display(DP);
            }

            for (int idx = 0; idx < (int)ring.size(); idx++) {
                res = min(res, DP[idx][key.size() - 1]);
            }
            return res + key.size();
        }

        void _display(vector<vector<int> > DP) {
            for (int i = 0; i < (int)DP.size(); i++) {
                for (int j = 0; j < (int)DP[0].size(); j++) {
                    if (DP[i][j] == INT_MAX) {
                        cout << '.' << '\t';
                    } else {
                        cout << DP[i][j] << '\t';
                    }
                }
                cout << endl;
            }
        }
};
```

It gets AC.
