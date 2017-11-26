---
title: Sentence Similarity II
date: 2017-11-26 13:03:50
tags:
    - Depth-first Search
---

> Given two sentences words1, words2 (each represented as an array of strings), and a list of similar word pairs pairs, determine if two sentences are similar.
>
> For example, words1 = ["great", "acting", "skills"] and words2 = ["fine", "drama", "talent"] are similar, if the similar word pairs are pairs = [["great", "good"], ["fine", "good"], ["acting","drama"], ["skills","talent"]].
>
> Note that the similarity relation is transitive. For example, if "great" and "good" are similar, and "fine" and "good" are similar, then "great" and "fine" are similar.
>
> Also, a word is always similar with itself. For example, the sentences words1 = ["great"], words2 = ["great"], pairs = [] are similar, even though there are no specified similar word pairs.
>
> **Note:**
> + The length of words1 and words2 will not exceed 1000.
> + The length of pairs will not exceed 2000.
> + The length of each pairs[i] will be 2.
> + The length of each words[i] and pairs[i][j] will be in the range [1, 20].

<!--more-->

This is a extended problem from the previous one. You need to find the relationship between two words.

```
using namespace std;

class Solution
{
public:

    bool dfs(set<string> visited, map<string, set<string>> &strs, string current, string target)
    {
        if (visited.find(current) != visited.end()) {
            return false;
        }

        if (current == target) {
            return true;
        }

        visited.insert(current);
        bool res = false;
        for (auto i : strs[current]) {
            res = res || dfs(visited, strs, i, target);
        }
        return res;
    }

    bool areSentencesSimilarTwo(vector<string>& words1,
                                vector<string>& words2,
                                vector<pair<string, string>> pairs)
    {
        map<string, set<string>> strs;
        for (auto i : pairs) {
            if (strs.find(i.first) == strs.end()) {
                set<string> s;
                strs[i.first] = s;
            }
            if (strs.find(i.second) == strs.end()) {
                set<string> s;
                strs[i.second] = s;
            }
            strs[i.first].insert(i.second);
            strs[i.second].insert(i.first);
        }

        if (words1.size() != words2.size()) {
            return false;
        }

        set<string> visited;
        for (int i = 0; i < (int)words1.size(); i++) {
            if (words1[i] == words2[i]) {
                continue;
            }

            visited.clear();
            if (!dfs(visited, strs, words1[i], words2[i])) {
                return false;
            }
        }
        return true;
    }
};
```

At first I submit the solution. It gets TLE. Then I use a vector to store the mid value.

```
using namespace std;

class Solution
{
public:

    bool dfs(set<string> visited, map<string, set<string>> &strs, string current, string target)
    {
        bool res = false;

        vector<string> nexts;
        nexts.push_back(current);
        while (nexts.size() != 0) {
            string current = nexts.back();
            nexts.pop_back();
            if (visited.find(current) != visited.end()) {
                continue;
            }

            if (current == target) {
                res = true;
                break;
            }

            visited.insert(current);
            for (auto i : strs[current]) {
                if (visited.find(i) == visited.end()) {
                    nexts.push_back(i);
                }
            }
        }
        return res;
    }

    bool areSentencesSimilarTwo(vector<string>& words1,
                                vector<string>& words2,
                                vector<pair<string, string>> pairs)
    {
        map<string, set<string>> strs;
        for (auto i : pairs) {
            if (strs.find(i.first) == strs.end()) {
                set<string> s;
                strs[i.first] = s;
            }
            if (strs.find(i.second) == strs.end()) {
                set<string> s;
                strs[i.second] = s;
            }
            strs[i.first].insert(i.second);
            strs[i.second].insert(i.first);
        }

        if (words1.size() != words2.size()) {
            return false;
        }

        set<string> visited;
        for (int i = 0; i < (int)words1.size(); i++) {
            if (words1[i] == words2[i]) {
                continue;
            }

            visited.clear();
            if (!dfs(visited, strs, words1[i], words2[i])) {
                return false;
            }
        }
        return true;
    }
};
```

It gets AC. Done.
