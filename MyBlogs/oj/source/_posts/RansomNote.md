---
title: Ransom Note
date: 2017-01-12 23:45:36
tags:
    - String
---

> Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.
>
> Each letter in the magazine string can only be used once in your ransom note.
>
> Note:
> You may assume that both strings contain only lowercase letters.
>
> canConstruct("a", "b") -> false
> canConstruct("aa", "ab") -> false
> canConstruct("aa", "aab") -> true

<!--more-->

This is Leetcode 383 and it is an easy problem. Just notice one thing: whiteSpace, numbers, should be taken into consideration. So the length of the char array should not be only 26.


```
class Solution {
    public:
        bool canConstruct(string ransomNote, string magazine) {
            int chars[512] = {0};
            for (int i = 0; i < (int)magazine.size(); i++) {
                chars[(int)magazine[i]]++;
            }
            for (int i = 0; i < (int)ransomNote.size(); i++) {
                chars[(int)ransomNote[i]]--;
                if (chars[(int)ransomNote[i]] < 0) {
                    return false;
                }
            }
            return true;
        }
};
```

And it gets AC.
