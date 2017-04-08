---
title: Reverse String II
date: 2017-03-16 14:24:59
tags:
    - String
---

> Given a string and an integer k, you need to reverse the first k characters for every 2k characters counting from the start of the string. If there are less than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and left the other as original.
>
> Example:
>```
Input: s = "abcdefg", k = 2
Output: "bacdfeg"
```
> Restrictions:
>
> + The string consists of lower English letters only.
> + Length of the given string and k will in the range [1, 10000]

<!--more-->

This is Leetcode No.541, It is a problem with easy tag which means this problem can be solved in hundreds ways.

First I think about use a stack to store the chars. But it will use O(k) extra space.

So, I use two marks to mark the start and end of the reversed string.

Here comes the answer:

```
using namespace std;

class Solution {
    public:
        string reverseStr(string str, int k) {
            stack<char> chars;
            int idx = 0;
            while (idx < (int)str.length()) {
                int start = idx, end = idx + k - 1;
                if (end >= (int)str.length()) {
                    end = str.length() - 1;
                }

                idx = end + k + k;
                while (start < end) {
                    char tmp = str[end];
                    str[end] = str[start];
                    str[start] = tmp;

                    start++;
                    end--;
                }

            }

            return str;
        }
};
```

It gets AC.
