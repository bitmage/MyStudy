---
title: Keyboard Row
date: 2017-02-20 10:12:50
tags:
    - Hash Table
---

> Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
>
> American keyboard:
> ![keyboard](https://leetcode.com/static/images/problemset/keyboard.png)
>
> Example 1:
> + Input: ["Hello", "Alaska", "Dad", "Peace"]
> + Output: ["Alaska", "Dad"]
>
> Note:
> + You may use one character in the keyboard more than once.
> + You may assume the input string will only contain letters of alphabet.

<!--more-->

It is Leetcode No.500, and it is a very easy problem.

```
class Solution {
    public:
        vector<string> findWords(vector<string>& words) {
            set<char> level[3];
            vector<string> res;

            level[0].insert('q');
            level[0].insert('w');
            level[0].insert('e');
            level[0].insert('r');
            level[0].insert('t');
            level[0].insert('y');
            level[0].insert('u');
            level[0].insert('i');
            level[0].insert('o');
            level[0].insert('p');

            level[0].insert('Q');
            level[0].insert('W');
            level[0].insert('E');
            level[0].insert('R');
            level[0].insert('T');
            level[0].insert('Y');
            level[0].insert('U');
            level[0].insert('I');
            level[0].insert('O');
            level[0].insert('P');

            level[1].insert('a');
            level[1].insert('s');
            level[1].insert('d');
            level[1].insert('f');
            level[1].insert('g');
            level[1].insert('h');
            level[1].insert('j');
            level[1].insert('k');
            level[1].insert('l');


            level[1].insert('A');
            level[1].insert('S');
            level[1].insert('D');
            level[1].insert('F');
            level[1].insert('G');
            level[1].insert('H');
            level[1].insert('J');
            level[1].insert('K');
            level[1].insert('L');


            level[2].insert('z');
            level[2].insert('x');
            level[2].insert('c');
            level[2].insert('v');
            level[2].insert('b');
            level[2].insert('n');
            level[2].insert('m');

            level[2].insert('Z');
            level[2].insert('X');
            level[2].insert('C');
            level[2].insert('V');
            level[2].insert('B');
            level[2].insert('N');
            level[2].insert('M');

            for (auto word : words) {
                int idx = -1;
                for (int i = 0; i < 3; i++) {
                    if (level[i].find(word[0]) != level[i].end()) {
                        idx = i;
                        break;
                    }
                }
                for (int i = 1; i < (int)word.length(); i++) {
                    if (level[idx].find(word[i]) == level[idx].end()) {
                        idx = -1;
                        break;
                    }
                }
                if (idx != -1) {
                    res.push_back(word);
                }
            }
            return res;
        }
};
```

It gets AC.
