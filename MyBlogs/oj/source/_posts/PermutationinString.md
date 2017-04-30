---
title: Permutation in String
date: 2017-04-30 10:47:21
tags:
    - Two Pointers
    - String
---


> Given two strings s1 and s2, write a function to return true if s2 contains the permutation of s1. In other words, one of the first string's permutations is the substring of the second string.
>
> Example 1:
>```
Input:s1 = "ab" s2 = "eidbaooo"
Output:True
Explanation: s2 contains one permutation of s1 ("ba").
```
> Example 2:
>```
Input:s1= "ab" s2 = "eidboaoo"
Output: False
```
> Note:
>
> + The input strings only contain lower case letters.
> + The length of both given strings is in range [1, 10,000].

<!--more-->

This is Leetcode No.567 and also one of the Leetcode contest weekly 30.

I first come up with the solution with Trie Tree. But I find that the length is more than 10000. So, the tree may be larger than what I think.

So, I come up with the idea that using Two pointers. Which means that I can think in another way: if the substring of s2 is one permutation of s1?

The code comes:

```
using namespace std;

class Solution {
    public:
        bool checkInclusion(string s1, string s2) {
            if (s1.length() > s2.length()) {
                return false;
            }

            vector<int> DP(256, 0);
            for (int i = 0; i < (int)s1.length(); i++) {
                DP[s1[i]]++;
            }

            vector<int> standard(256, 0);
            int startIdx = 0, endIdx = 0;
            while (standard != DP && endIdx < (int)s2.length()) {
                if (standard[s2[endIdx]] < DP[s2[endIdx]]) {
                    standard[s2[endIdx]]++;
                    endIdx++;
                    continue;
                }
                if (DP[s2[endIdx]] == 0) {
                    for (int i = 0; i < 256; i++) standard[i] = 0;

                    endIdx++;
                    startIdx = endIdx;
                    continue;
                }
                if (standard[s2[endIdx]] == DP[s2[endIdx]]) {
                    while (s2[startIdx] != s2[endIdx]) {
                        standard[s2[startIdx]]--;
                        startIdx++;
                    }
                    startIdx++;
                    endIdx++;
                    continue;
                }
                endIdx++;
            }
            if (standard == DP) {
                return true;
            } else {
                return false;
            }
        }
};
```

It gets AC.
