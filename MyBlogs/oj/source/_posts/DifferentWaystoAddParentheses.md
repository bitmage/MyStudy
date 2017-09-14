---
title: Different Ways to Add Parentheses
date: 2017-09-14 19:22:30
tags:
    - Backtracking
    - Divide and Conquer
---

> Given a string of numbers and operators, return all possible results from computing all the different possible ways to group numbers and operators. The valid operators are +, - and *.
>
> **Example 1**
```
Input: "2-1-1".

((2-1)-1) = 0
(2-(1-1)) = 2

Output: [0, 2]
```
> **Example 2**
```
Input: "2*3-4*5"

(2*(3-(4*5))) = -34
((2*3)-(4*5)) = -14
((2*(3-4))*5) = -10
(2*((3-4)*5)) = -10
(((2*3)-4)*5) = 10

Output: [-34, -14, -10, -10, 10]
```

<!--more-->

I think this problem is one of the best problems in the Leetcode. You can find the process of solving the problem is so fun that you will forget the time.

At first, I just make the tree structure, then try to calculate the value, but it is too hard.

Then I find, why can't use the way to solve the problem like reconstract the tree from the preorder and inorder.

So, the code comes:

```
using namespace std;

class Solution {
public:
    vector<int> diffWaysToCompute(string str) {
        vector<int> res;
        for (int i = 0; i < (int)str.length(); i++) {
            if (str[i] == '+'
                    || str[i] == '-'
                    || str[i] == '*')
            {
                vector<int> leftRes = diffWaysToCompute(str.substr(0, i));
                vector<int> rightRes = diffWaysToCompute(str.substr(i + 1));

                for (auto lnum : leftRes) {
                    for (auto rnum : rightRes) {
                        switch (str[i]) {
                            case '+':
                                res.push_back(lnum + rnum);
                                break;
                            case '-':
                                res.push_back(lnum - rnum);
                                break;
                            case '*':
                                res.push_back(lnum * rnum);
                                break;

                        }
                    }
                }
            }
        }
        if (res.size() == 0) {
            res.push_back(stoi(str));
        }
        return res;
    }
};
```

It's clean and it gets AC.
