---
title: Restore IP Addresses
date: 2017-04-27 23:07:40
tags:
    - String
    - Backtracking
---

> Given a string containing only digits, restore it by returning all possible valid IP address combinations.
>
> For example:
>```
Given "25525511135",
return ["255.255.11.135", "255.255.111.35"]. (Order does not matter)
```

<!--more-->

This is Leetcode No.93. It is not a hard problem. What you should take care about is that you should pay attention to this case: `0000` and `0122034`.

So, the code becomes:

```
using namespace std;

class Solution {
    public:
        void  buildIP(vector<string> &res, string &s, int start, int num, string cur) {
            int numDigits = s.size() - start;
            if(numDigits < num || numDigits > 3*num) return;
            if(num == 1) {
                if((numDigits == 1) || ( s[start]!='0' && atoi(s.substr(start).c_str()) <= 255))
                    res.push_back(cur + s.substr(start));
            } else {
                buildIP(res, s, start+1, num-1, cur+ s.substr(start,1) + ".");
                if(s[start] != '0') {
                    buildIP(res, s, start+2, num-1, cur+ s.substr(start,2) + ".");
                    if(atoi(s.substr(start,3).c_str()) <= 255)
                        buildIP(res, s, start+3, num-1, cur+ s.substr(start,3) + ".");
                }
            }
        }

        vector<string> restoreIpAddresses(string s) {
            vector<string> res;
            buildIP(res, s, 0, 4, "");
            return res;
        }
};
```

It gets AC.
