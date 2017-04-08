---
title: Maximum Product of Word Lengths
date: 2017-01-18 22:23:09
tags:
    - Bitmap
---

> Given a string array words, find the maximum value of length(word[i]) * length(word[j]) where the two words do not share common letters. You may assume that each word will contain only lower case letters. If no such two words exist, return 0.
>
> Example 1:
>
> + Given ["abcw", "baz", "foo", "bar", "xtfn", "abcdef"]
> + Return 16 The two words can be "abcw", "xtfn".
>
> Example 2:
>
> + Given ["a", "ab", "abc", "d", "cd", "bcd", "abcd"]
> + Return 4 The two words can be "ab", "cd".
>
> Example 3:
>
> + Given ["a", "aa", "aaa", "aaaa"]
> + Return 0 No such pair of words.

<!--more-->

This is Leetcode 318, and it is just a change from the common simulation problem(add some conditions).

I just use the simplest method to get AC...

```
class Solution {
    public:
        int maxProduct(vector<string>& words) {
            if (words.size() == 0) {
                return 0;
            }
            vector<bitset<26> > wordsets;
            for (unsigned int i = 0; i < words.size(); i++) {
                wordsets.push_back(bitset<26>());
                for (unsigned int j = 0; j < words[i].length(); j++) {
                    wordsets[i][words[i][j] - 'a'] = 1;
                }
            }

            int result = 0;
            for (unsigned int i = 0; i < words.size() - 1; i++) {
                for (unsigned int j = i + 1; j < words.size(); j++) {
                    bitset<26> res = wordsets[i] ^ wordsets[j];
                    if (res.count() == wordsets[i].count() + wordsets[j].count()) {
                        result = max(int(words[i].length() * words[j].length()), result);
                    }
                }
            }
            return result;
        }
};
```

That's so easy...
