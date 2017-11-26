---
title: Sentence Similarity
date: 2017-11-24 13:06:41
tags:
    - Array
    - String
---

> Given two sentences words1, words2 (each represented as an array of strings), and a list of similar word pairs pairs, determine if two sentences are similar.
>
> For example, "great acting skills" and "fine drama talent" are similar, if the similar word pairs are pairs = [["great", "fine"], ["acting","drama"], ["skills","talent"]].
>
> Note that the similarity relation is not transitive. For example, if "great" and "fine" are similar, and "fine" and "good" are similar, "great" and "good" are not necessarily similar.
>
> Also, a word is always similar with itself. For example, the sentences words1 = ["great"], words2 = ["great"], pairs = [] are similar, even though there are no specified similar word pairs.
>
> Finally, sentences can only be similar if they have the same number of words. So a sentence like words1 = ["great"] can never be similar to words2 = ["doubleplus","good"].
>
> **Note:**
> + The length of words1 and words2 will not exceed 1000.
> + The length of pairs will not exceed 2000.
> + The length of each pairs[i] will be 2.
> + The length of each words[i] and pairs[i][j] will be in the range [1, 20].

<!--more-->

Easy one.

```
using namespace std;

class Solution
{
public:
    bool areSentencesSimilar(vector<string>& words1, vector<string>& words2, vector<pair<string, string>> pairs)
    {
        set<pair<string, string>> sets;
        for (auto i : pairs) {
            sets.insert(i);
        }
        if (words1.size() != words2.size()) {
            return false;
        }
        for (int i = 0; i < (int)words1.size(); i++) {
            if (words1[i] == words2[i]) {
                continue;
            }
            if (sets.find(pair<string, string>(words1[i], words2[i])) == sets.end()
                && sets.find(pair<string, string>(words2[i], words1[i])) == sets.end()) {
                return false;
            }
        }
        return true;
    }
};
```

It gets AC.
