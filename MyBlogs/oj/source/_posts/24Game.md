---
title: 24 Game
date: 2017-09-18 12:19:26
tags:
    - Array
    - Math
    - Backtracking
---


> You have 4 cards each containing a number from 1 to 9. You need to judge whether they could operated through *, /, +, -, (, ) to get the value of 24.
>
> **Example 1:**
```
Input: [4, 1, 8, 7]
Output: True
Explanation: (8-4) * (7-1) = 24
```
> **Example 2:**
```
Input: [1, 2, 1, 2]
Output: False
```
> **Note:**
>
> + The division operator / represents real division, not integer division. For example, 4 / (1 - 2/3) = 12.
> + Every operation done is between two numbers. In particular, we cannot use - as a unary operator. For example, with [1, 1, 1, 1] as input, the expression -1 - 1 - 1 - 1 is not allowed.
> + You cannot concatenate numbers together. For example, if the input is [1, 2, 1, 2], we cannot write this as 12 + 12.


<!--more-->

It is a really interesting problem. I just to make sure we can get all the combinations. Then calculate one by one.

```
using namespace std;

class Solution {
public:
    vector<string> combinations;
    void combine(vector<int> &nums, string currentStr, vector<bool> &visited, int used) {
        if (used == (int)nums.size() - 1) {
            for (int currentIdx = 0; currentIdx < (int)nums.size(); currentIdx++) {
                if (visited[currentIdx]) {
                    continue;
                }
                currentStr = currentStr + to_string(nums[currentIdx]);
                combinations.push_back(currentStr);
            }
        } else {
            for (int currentIdx = 0; currentIdx < (int)nums.size(); currentIdx++) {
                if (visited[currentIdx]) {
                    continue;
                }
                visited[currentIdx] = true;
                combine(nums, currentStr + to_string(nums[currentIdx]) + '+', visited, used + 1);
                combine(nums, currentStr + to_string(nums[currentIdx]) + '-', visited, used + 1);
                combine(nums, currentStr + to_string(nums[currentIdx]) + '*', visited, used + 1);
                combine(nums, currentStr + to_string(nums[currentIdx]) + '/', visited, used + 1);
                visited[currentIdx] = false;
            }
        }
    }

    bool is24 = false;
    double calc(string str) {
        for (int i = 0; i < (int)str.length(); i++) {
            if (str[i] == '+' || str[i] == '-' || str[i] == '*' || str[i] == '/') {
                double left = calc(str.substr(0, i));
                double right = calc(str.substr(i + 1));

                if (str[i] == '+') {
                    return left + right;
                }
                if (str[i] == '-') {
                    return left - right;
                }
                if (str[i] == '*') {
                    return left * right;
                }
                if (str[i] == '/') {
                    if (right == 0) {
                        return 0;
                    }
                    return left / right;
                }
            }
        }

        return std::stod(str);
    }

    void sum(string str) {
        for (int i = 0; i < (int)str.length(); i++) {
            if (str[i] == '+' || str[i] == '-' || str[i] == '*' || str[i] == '/') {
                double left = calc(str.substr(0, i));
                double right = calc(str.substr(i + 1));
                double res = 0;

                if (str[i] == '+') {
                    res = left + right;
                }
                if (str[i] == '-') {
                    res = left - right;
                }
                if (str[i] == '*') {
                    res = left * right;
                }
                if (str[i] == '/') {
                    if (right != 0) {
                        res = left / right;
                    }
                }

                if (abs(res - 24) < 0.0000001) {
                    is24 = true;
                    break;
                }
            }
        }
    }

    bool judgePoint24(vector<int>& nums) {
        vector<bool> visited(4, false);
        combine(nums, "", visited, 0);

        for (auto combination : combinations) {
            sum(combination);

            if (is24) {
                break;
            }
        }

        return is24;
    }
};
```

It gets AC.
