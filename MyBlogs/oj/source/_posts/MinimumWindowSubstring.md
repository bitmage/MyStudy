---
title: Minimum Window Substring
date: 2017-05-16 13:34:57
tags:
    - String
    - Hash Table
    - Two Pointers
---

> Given a string S and a string T, find the minimum window in S which will contain all the characters in T in complexity O(n).
>
> **For example:**
```
S = "ADOBECODEBANC"
T = "ABC"
Minimum window is "BANC".
```
> **Note:**
> + If there is no such window in S that covers all characters in T, return the empty string "".
> + If there are multiple such windows, you are guaranteed that there will always be only one unique minimum window in S.

<!--more-->

This is Leetcode No.76. In my opinion, that the older problems in Leetcode are not designed for the corner cases instead of algrithem.

So, this problem has no thought difficulties. You can use the Two Pointers and a Hash Table to solve it directly.

This is my AC code:

```
using namespace std;

class Solution {
    public:
        string minWindow(string source, string target) {
            if (target.length() > source.length()) {
                return "";
            }

            int startIdx = 0, endIdx = 0, res = INT_MAX, minStartIdx = 0, minEndIdx = 0;
            int TARGET[255] = {0}, SOURCE[255] = {0};

            for (int i = 0; i < (int)target.length(); i++) {
                TARGET[(int)target[i]]++;
            }

            SOURCE[(int)source[endIdx]]++;
            while (startIdx <= endIdx && endIdx < (int)source.length()) {
                if (!isContains(SOURCE, TARGET)) {
                    endIdx++;
                    SOURCE[(int)source[endIdx]]++;
                } else {
                    int len = 1 + endIdx - startIdx;
                    if (len < res) {
                        res = len;
                        minStartIdx = startIdx;
                        minEndIdx = endIdx;
                    }
                    SOURCE[(int)source[startIdx]]--;
                    startIdx++;
                }
            }

            return source.substr(minStartIdx, res == INT_MAX ? 0 : res);
        }

        bool isContains(int source[255], int target[255]) {
            for (int i = 0; i < 255; i++) {
                if (target[i] > source[i]) {
                    return false;
                }
            }
            return true;
        }
};
```

Easy to understand.
