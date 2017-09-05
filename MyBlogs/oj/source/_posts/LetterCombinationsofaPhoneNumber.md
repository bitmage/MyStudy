---
title: Letter Combinations of a Phone Number
date: 2017-09-05 23:22:26
tags:
    - Simulation
    - String
    - Backtracking
---

> Given a digit string, return all possible letter combinations that the number could represent.
> 
> A mapping of digit to letters (just like on the telephone buttons) is given below.
> ![Example](http://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Telephone-keypad2.svg/200px-Telephone-keypad2.svg.png)
```
Input:Digit string "23"
Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
```
> **Note:**
> + Although the above answer is in lexicographical order, your answer could be in any order you want. 

<!--more-->

Easy one, you just need to find the backtracking method.

The code is:

```
using namespace std;

class Solution {
public:

    void backtrack(map<char, string> &buttons, string digits, int currentIdx, vector<string> &res, string currentStr) {
        if (currentIdx == (int)digits.length()) {
            if (currentStr.length() > 0)
                res.push_back(currentStr);
        } else {
            for (int i = 0; i < (int)buttons[digits[currentIdx]].size(); i++) {
                backtrack(buttons, digits, currentIdx + 1, res, currentStr + buttons[digits[currentIdx]][i]);
            }
        }
    }

    vector<string> letterCombinations(string digits) {
        map<char, string> buttons;
        buttons['1'] = "";
        buttons['2'] = "abc";
        buttons['3'] = "def";
        buttons['4'] = "ghi";
        buttons['5'] = "jkl";
        buttons['6'] = "mno";
        buttons['7'] = "pqrs";
        buttons['8'] = "tuv";
        buttons['9'] = "wxyz";

        vector<string> res;
        backtrack(buttons, digits, 0, res, "");
        return res;
    }
};
```

It gets AC.
