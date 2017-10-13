---
title: Top K Frequent Words
date: 2017-10-13 18:30:26
tags:
    - Heap
    - Trie
    - Hash Table
---

> Given a non-empty list of words, return the k most frequent elements.
>
> Your answer should be sorted by frequency from highest to lowest. If two words have the same frequency, then the word with the lower alphabetical order comes first.
>
> **Example 1:**
```
Input: ["i", "love", "leetcode", "i", "love", "coding"], k = 2
Output: ["i", "love"]
Explanation: "i" and "love" are the two most frequent words.
    Note that "i" comes before "love" due to a lower alphabetical order.
```
> **Example 2:**
```
Input: ["the", "day", "is", "sunny", "the", "the", "the", "sunny", "is", "is"], k = 4
Output: ["the", "is", "sunny", "day"]
Explanation: "the", "is", "sunny" and "day" are the four most frequent words,
    with the number of occurrence being 4, 3, 2 and 1 respectively.
```
> **Note:**
> + You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
> + Input words contain only lowercase letters.
>
> **Follow up:**
> + Try to solve it in O(n log k) time and O(n) extra space.
> + Can you solve it in O(n) time with only O(k) extra space?

<!--more-->

Here is the most easy-to-write solution:

```
using namespace std;

bool cmp(const pair<string, int> a, const pair<string, int> b) {
    if (a.second > b.second) {
        return true;
    } else {
        return a.first < b.first;
    }
}

class Solution {
public:
    vector<string> topKFrequent(vector<string>& words, int k) {
        map<string, pair<string, int>> wordsWithTimes;
        vector<pair<string, int>> maxStrs;

        for (int i = 0; i < (int)words.size(); i++) {
            if (wordsWithTimes.find(words[i]) != wordsWithTimes.end()) {
                wordsWithTimes[words[i]].first = words[i];
                wordsWithTimes[words[i]].second++;
            } else {
                wordsWithTimes.insert(pair<string, pair<string, int>>(words[i], pair<string, int>(words[i], 1)));
            }
        }

        for (auto wordPair : wordsWithTimes) {
            maxStrs.push_back(wordsWithTimes[wordPair.first]);
        }

        vector<string> res;
        sort(maxStrs.begin(), maxStrs.end(), cmp);

        for (int i = 0; i < k; i++) {
            res.push_back(maxStrs[i].first);
        }
        return res;
    }
};
```

It gets AC.
