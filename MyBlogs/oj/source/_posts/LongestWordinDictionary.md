---
title: Longest Word in Dictionary
date: 2017-11-06 12:11:04
tags:
    - Hash Table
    - Trie
---

> Given a list of strings words representing an English Dictionary, find the longest word in words that can be built one character at a time by other words in words. If there is more than one possible answer, return the longest word with the smallest lexicographical order.
> If there is no answer, return the empty string.
>
> **Example 1:**
```
Input:
words = ["w","wo","wor","worl", "world"]
Output: "world"
Explanation:
    The word "world" can be built one character at a time by "w", "wo", "wor", and "worl".
```
> **Example 2:**
```
Input:
words = ["a", "banana", "app", "appl", "ap", "apply", "apple"]
Output: "apple"
Explanation:
    Both "apply" and "apple" can be built from other words in the dictionary.
    However, "apple" is lexicographically smaller than "apply".
```
> **Note:**
> + All the strings in the input will only contain lowercase letters.
> + The length of words will be in the range [1, 1000].
> + The length of words[i] will be in the range [1, 30].

<!--more-->

At first I think the problem description is to find the word with the longest length and the smallest lexicographical order.

And, it can be buit by each word gives a character. So, the code is like this:

```
using namespace std;

bool cmp(const string a, const string b)
{
    if (a.length() != b.length()) {
        return a.length() > b.length();
    } else {
        return a < b;
    }
}

class Solution
{
public:
    string longestWord(vector<string>& words)
    {
        sort(words.begin(), words.end(), cmp);
        vector<int> chars(26, 0);

        for (int i = 0; i < (int)words.size(); i++) {
            for (int j = 0; j < (int)words[i].length(); j++) {
                chars[words[i][j] - 'a']++;
            }
            if (isOk(words, chars, 0)) {
                return words[i];
            }
        }
        return "";
    }

    bool isOk(vector<string> &words, vector<int> &chars, int idx)
    {
        bool res = true;
        for (auto i = 0; i < 26; i++) {
            if (chars[i] != 0) {
                res = false;
            }
        }

        if (res) {
            return true;
        }

        if (idx >= (int)words.size()) {
            return false;
        }

        for (int i = 0; i < (int)words[idx].length(); i++) {
            if (res) {
                break;
            }
            if (chars[words[idx][i] - 'a']) {
                chars[words[idx][i] - 'a']--;
                res = isOk(words, chars, idx + 1);
                chars[words[idx][i] - 'a']++;
            }
        }
        res = res || isOk(words, chars, idx + 1);
        return res;
    }
};
```

However, the code gets WA. So, I understand the real meaning of the problem, we just need to find the prefix.

So, the answer is quite simple.

```
using namespace std;

bool cmp(const string a, const string b) {
    if (a.length() != b.length()) {
        return a.length() > b.length();
    } else {
        return a < b;
    }
}

bool check(set<string> &words, string word, int len) {
    if (len == 0) {
        return true;
    } else {
        if (words.find(word.substr(0, len)) != words.end()) {
            return check(words, word, len - 1);
        }
    }
    return false;
}

class Solution
{
public:
    string longestWord(vector<string>& words)
    {
        sort(words.begin(), words.end(), cmp);
        set<string> _words;
        for (auto i : words) {
            _words.insert(i);
        }

        for (int i = 0; i < (int)words.size(); i++) {
            if (check(_words, words[i], words[i].length())) {
                return words[i];
            }
        }
        return "";
    }
};
```

It gets AC.
