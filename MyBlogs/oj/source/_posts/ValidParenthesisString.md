---
title: Valid Parenthesis String
date: 2017-11-29 16:37:28
tags:
    - String
---

> Given a string containing only three types of characters: '(', ')' and '*', write a function to check whether this string is valid. We define the validity of a string by these rules:
>
> + Any left parenthesis '(' must have a corresponding right parenthesis ')'.
> + Any right parenthesis ')' must have a corresponding left parenthesis '('.
> + Left parenthesis '(' must go before the corresponding right parenthesis ')'.
> + '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string.
> + An empty string is also valid.
>
> **Example 1:**
```
Input: "()"
Output: True
```
> **Example 2:**
```
Input: "(*)"
Output: True
```
> **Example 3:**
```
Input: "(*))"
Output: True
```
> **Note:**
> + The string size will be in the range [1, 100].

<!--more-->

At first, I write the solution so quick that it cause the TLE:

```
using namespace std;

class Solution
{
public:
    bool isValid(string str, int idx, int left)
    {
        if (left < 0) {
            return false;
        }
        if (idx == (int)str.length()) {
            return left == 0;
        }
        if (str[idx] == '(') {
            left = left + 1;
            return isValid(str, idx + 1, left);
        } else if (str[idx] == ')') {
            left = left - 1;
            return isValid(str, idx + 1, left);
        } else if (str[idx] == '*') {
            return isValid(str, idx + 1, left + 1) || isValid(str, idx + 1, left - 1) || isValid(str, idx + 1, left);
        }
        return true;
    }

    bool checkValidString(string s)
    {
        if (s.length() == 0) {
            return true;
        }

        return isValid(s, 0, 0);
    }
};
```

Then, I find a way to increase the speed by use a stack.

```
using namespace std;

class Solution
{
public:
    bool checkValidString(string str)
    {
        list<pair<int, int>> status;
        status.push_back(pair<int, int>(0, 0));
        while (!status.empty()) {
            pair<int, int> s = status.back();
            status.pop_back();

            if (s.second < 0) {
                continue;
            }

            if (s.first == (int)str.length()) {
                if (s.second == 0) {
                    return true;
                }
            }

            if (str[s.first] == '(') {
                status.push_back(pair<int, int>(s.first + 1, s.second + 1));
            } else if (str[s.first] == ')') {
                status.push_back(pair<int, int>(s.first + 1, s.second - 1));
            } else if (str[s.first] == '*') {
                status.push_back(pair<int, int>(s.first + 1, s.second - 1));
                status.push_back(pair<int, int>(s.first + 1, s.second + 1));
                status.push_back(pair<int, int>(s.first + 1, s.second));
            }
        }
        return false;
    }
};
```

It still gets a TLE. Then I add a mem check for the cases.

```
using namespace std;

class Solution
{
public:
    bool checkValidString(string str)
    {
        set<pair<int, int>> dp;
        list<pair<int, int>> status;
        status.push_back(pair<int, int>(0, 0));
        while (!status.empty()) {
            pair<int, int> s = status.back();
            status.pop_back();

            if (dp.find(s) != dp.end()) {
                continue;
            } else {
                dp.insert(s);
            }

            if (s.second < 0) {
                continue;
            }

            if (s.first == (int)str.length()) {
                if (s.second == 0) {
                    return true;
                }
            }

            if (str[s.first] == '(') {
                status.push_back(pair<int, int>(s.first + 1, s.second + 1));
            } else if (str[s.first] == ')') {
                status.push_back(pair<int, int>(s.first + 1, s.second - 1));
            } else if (str[s.first] == '*') {
                status.push_back(pair<int, int>(s.first + 1, s.second - 1));
                status.push_back(pair<int, int>(s.first + 1, s.second + 1));
                status.push_back(pair<int, int>(s.first + 1, s.second));
            }
        }
        return false;
    }
};
```

It eventually pass the test cases.
