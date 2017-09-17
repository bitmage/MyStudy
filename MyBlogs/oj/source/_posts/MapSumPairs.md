---
title: Map Sum Pairs
date: 2017-09-17 22:29:15
tags:
    - Tree
    - Trie
---


> Implement a MapSum class with insert, and sum methods.
>
> For the method insert, you'll be given a pair of (string, integer). The string represents the key and the integer represents the value. If the key already existed, then the original key-value pair will be overridden to the new one.
>
> For the method sum, you'll be given a string representing the prefix, and you need to return the sum of all the pairs' value whose key starts with the prefix.
>
> **Example:**
```
Input: insert("apple", 3), Output: Null
Input: sum("ap"), Output: 3
Input: insert("app", 2), Output: Null
Input: sum("ap"), Output: 5
```

<!--more-->

It is a classic Trie structure problem. You should build a trie tree to find the prefix word.

So, the result is:

```
using namespace std;

class TrieNode {
public:
    char value;
    int sum;
    map<char, TrieNode> nexts;

    TrieNode() {
        sum = 0;
    }
};

class MapSum {
public:
    TrieNode head;
    map<string, int> appears;

    MapSum() {
        head.value = '.';
    }

    void _insert(TrieNode &current, string key, int idx, int sum) {
        if (idx == (int)key.length()) {
            return;
        }
        if (current.nexts.find(key[idx]) == current.nexts.end()) {
            TrieNode *newNode = new TrieNode();
            newNode->sum = sum;
            newNode->value = key[idx];
            current.nexts.insert(pair<char, TrieNode>(key[idx], *newNode));
        } else {
            current.nexts.find(key[idx])->second.sum += sum;
        }
        _insert(current.nexts.find(key[idx])->second, key, idx + 1, sum);
    }

    void insert(string key, int val) {
        if (appears.find(key) != appears.end()) {
            int delta = val - appears[key];
            appears[key] = val;
            return _insert(head, key, 0, delta);
        } else {
            appears.insert(pair<string, int>(key, val));
            return _insert(head, key, 0, val);
        }
    }

    int _find(TrieNode &current, string key, int idx) {
        if (idx == (int)key.length()) {
            return current.sum;
        } else {
            if (current.nexts.find(key[idx]) != current.nexts.end()) {
                return _find(current.nexts.find(key[idx])->second, key, idx + 1);
            } else {
                return 0;
            }
        }
    }


    int sum(string prefix) {
        return _find(head, prefix, 0);
    }
};

/**
 * Your MapSum object will be instantiated and called as such:
 * MapSum obj = new MapSum();
 * obj.insert(key,val);
 * int param_2 = obj.sum(prefix);
 */
```

It gets AC.
