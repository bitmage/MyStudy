---
title: Student Attendance Record I
date: 2017-05-02 10:43:03
tags:
    - String
---

> You are given a string representing an attendance record for a student. The record only contains the following three characters:
>
> + 'A' : Absent.
> + 'L' : Late.
> + 'P' : Present.
>
> A student could be rewarded if his attendance record doesn't contain more than one 'A' (absent) or more than two continuous 'L' (late).
>
> You need to return whether the student could be rewarded according to his attendance record.
>
> Example 1:
```
Input: "PPALLP"
Output: True
```
> Example 2:
```
Input: "PPALLL"
Output: False
```

<!--more-->

This is Leetcode No.551. It is a simple problem. What you should do is to take care of the rules.

+ no more than one 'A'
+ no more than two continuous 'L'

So, the code comes:

```
using namespace std;

class Solution {
    public:
        bool checkRecord(string s) {
            int num_A = 0, num_L = 0;
            int t_num_L = 0;
            for (int i = 0; i < (int)s.length(); i++) {
                if (s[i] == 'A') {
                    num_A++;
                    t_num_L = 0;
                }
                if (s[i] == 'L') {
                    t_num_L++;
                    num_L = max(t_num_L, num_L);
                }
                if (s[i] == 'P') {
                    t_num_L = 0;
                }
            }
            if (num_A > 1 || num_L > 2) {
                return false;
            }
            return true;
        }
};
```

It gets AC.
