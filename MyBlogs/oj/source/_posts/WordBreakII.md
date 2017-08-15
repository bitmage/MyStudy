---
title: Word Break II
date: 2017-08-15 10:48:08
tags:
    - Depth-first Search
    - Dynamic Programming
---

> Given a non-empty string s and a dictionary wordDict containing a list of non-empty words, add spaces in s to construct a sentence where each word is a valid dictionary word. You may assume the dictionary does not contain duplicate words.
>
> Return all such possible sentences.
>
> For example, given
> + s = "catsanddog",
> + dict = ["cat", "cats", "and", "sand", "dog"].
>
> A solution is ["cats and dog", "cat sand dog"].

<!--more-->

At first, I use DFS to solve thie problem, but gets TLE.

```
using namespace std;

class Solution {
    public:
        vector<string> res;

        void isOk(string origin, map<char, vector<string>> &dict, char need, int currentIdx, vector<string> &currentStrs) {
            if (currentIdx == (int)origin.length()) {
                string _res = "";
                for (int i = 0; i < (int)currentStrs.size() - 1; i++) {
                    _res = _res + currentStrs[i] + ' ';
                }
                _res += currentStrs[currentStrs.size() - 1];
                res.push_back(_res);
            } else {
                for (auto word : dict[need]) {
                    if (word.length() + currentIdx > origin.length()) {
                        continue;
                    }

                    bool canMoveOn = true;
                    for (int idx = 0; idx < (int)word.length(); idx++) {
                        if (word[idx] != origin[currentIdx + idx]) {
                            canMoveOn = false;
                            break;
                        }
                    }
                    if (canMoveOn) {
                        currentStrs.push_back(word);
                        isOk(origin, dict, origin[currentIdx + word.length()], currentIdx + word.length(), currentStrs);
                        currentStrs.pop_back();
                    }
                }
            }
        }

        vector<string> wordBreak(string s, vector<string>& wordDict) {
            map<char, vector<string>> dict;
            for (auto word : wordDict) {
                dict[word[0]].push_back(word);
            }

            vector<string> currentStrs;
            isOk(s, dict, s[0], 0, currentStrs);
            return res;
        }
};
```

I think the problem may be the for loop. Then I use a DP array to store the mid value, it works:

```
using namespace std;

class Solution {
    public:
        map<string, vector<string>> DP;

        vector<string> isOk(string origin, map<char, vector<string>> &dict, char need, int currentIdx) {
            if (DP.find(origin.substr(currentIdx)) != DP.end()) {
                return DP.find(origin.substr(currentIdx))->second;
            }

            vector<string> res;
            if (currentIdx == (int)origin.length()) {
                res.push_back("");
                return res;
            }

            for (auto word : dict[need]) {
                if (word.length() + currentIdx > origin.length()) {
                    continue;
                }

                bool canMoveOn = true;
                for (int idx = 0; idx < (int)word.length(); idx++) {
                    if (word[idx] != origin[currentIdx + idx]) {
                        canMoveOn = false;
                        break;
                    }
                }
                if (canMoveOn) {
                    vector<string> next;
                    next = isOk(origin, dict, origin[currentIdx + word.length()], currentIdx + word.length());
                    for (int i = 0; i < (int)next.size(); i++) {
                        if (next[i].length() > 0) {
                            res.push_back(word + " " + next[i]);
                        } else {
                            res.push_back(word);
                        }
                    }
                }
            }

            DP.insert(pair<string, vector<string>>(origin.substr(currentIdx), res));
            return res;
        }

        vector<string> wordBreak(string s, vector<string>& wordDict) {
            set<char> remains;
            map<char, vector<string>> dict;
            for (auto word : wordDict) {
                dict[word[0]].push_back(word);
                for (int i = 0; i < (int)word.length(); i++) {
                    remains.insert(word[i]);
                }
            }


            vector<string> res = isOk(s, dict, s[0], 0);
            return res;
        }
};
```

It gets AC.
