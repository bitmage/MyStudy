---
title: Evaluate Reverse Polish Notation
date: 2017-03-26 23:31:45
tags:
    - Stack
---

> Evaluate the value of an arithmetic expression in Reverse Polish Notation.
>
> Valid operators are +, -, *, /. Each operand may be an integer or another expression.
>
> Some examples:
>```
["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6
```
<!--more-->

This is Leetcode No.150. It is a common problem which using stacks.

We just need to put every number into a stack and poll them out when we meet other signal for instance: '+', '-' .etc.

So, my solution is as following:

```
using namespace std;

class Solution {
    public:
        int evalRPN(vector<string>& tokens) {
            if (tokens.size() == 0) {
                return 0;
            } else if (tokens.size() == 1) {
                return atoi(tokens[0].c_str());
            }

            stack<int> nums;
            int result = 0;

            for (auto token : tokens) {
                if (token == "-") {
                    int post = nums.top();
                    nums.pop();
                    int pre = nums.top();
                    nums.pop();
                    result = pre - post;
                    nums.push(result);
                } else if (token == "+") {
                    int post = nums.top();
                    nums.pop();
                    int pre = nums.top();
                    nums.pop();
                    result = pre + post;
                    nums.push(result);
                } else if (token == "*") {
                    int post = nums.top();
                    nums.pop();
                    int pre = nums.top();
                    nums.pop();
                    result = pre * post;
                    nums.push(result);
                } else if (token == "/") {
                    int post = nums.top();
                    nums.pop();
                    int pre = nums.top();
                    nums.pop();
                    result = pre / post;
                    nums.push(result);
                } else {
                    int num = atoi(token.c_str());
                    nums.push(num);
                }
            }

            return result;
        }
};
```

It gets AC.
