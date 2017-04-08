---
title: Detect Capital
date: 2017-02-25 11:26:08
tags:
    - String
---

> Given a word, you need to judge whether the usage of capitals in it is right or not.
>
> We define the usage of capitals in a word to be right when one of the following cases holds:
>
> + All letters in this word are capitals, like "USA".
> + All letters in this word are not capitals, like "leetcode".
> + Only the first letter in this word is capital if it has more than one letter, like "Google".
>
> Otherwise, we define that this word doesn't use capitals in a right way.
>
> Example 1:
> + Input: "USA"
> + Output: True
>
> Example 2:
> + Input: "FlaG"
> + Output: False
>
> Note: The input will be a non-empty word consisting of uppercase and lowercase latin letters.

<!--more-->

This is leetcode No.520. It is an easy one. Just follow the steps mentioned above.

```
using namespace std;

class Solution {
    public:
        bool detectCapitalUse(string word) {
            int capitalIndex = -1;
            for (int idx = 0; idx < (int)word.length(); idx++) {
                if (word[idx] <= 'Z' && word[idx] >= 'A') {
                    if (capitalIndex + 1 == idx) {
                        capitalIndex = capitalIndex + 1;
                    } else {
                        return false;
                    }
                }
            }
            return capitalIndex <= 0 || capitalIndex == (int)word.length() - 1;
        }
};
```

We can do such a clean solution. It gets AC.
