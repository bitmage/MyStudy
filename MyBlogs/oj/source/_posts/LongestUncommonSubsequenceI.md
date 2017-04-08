---
title: Longest Uncommon Subsequence I
date: 2017-04-06 22:15:53
tags:
    - String
---

> Given a group of two strings, you need to find the longest uncommon subsequence of this group of two strings. The longest uncommon subsequence is defined as the longest subsequence of one of these strings and this subsequence should not be any subsequence of the other strings.
>
> A subsequence is a sequence that can be derived from one sequence by deleting some characters without changing the order of the remaining elements. Trivially, any string is a subsequence of itself and an empty string is a subsequence of any string.
>
> The input will be two strings, and the output needs to be the length of the longest uncommon subsequence. If the longest uncommon subsequence doesn't exist, return -1.
>
> Example 1:
>```
Input: "aba", "cdc"
Output: 3
Explanation:
    The longest uncommon subsequence is "aba" (or "cdc"),
    because "aba" is a subsequence of "aba",
    but not a subsequence of any other strings in the group of two strings.
```
> Note:
>
> + Both strings' lengths will not exceed 100.
> + Only letters from a ~ z will appear in input strings.

<!--more-->

This is Leetcode No.521. It is a easy problem, and it may confuse me at first.

I thought about the search method, try to list all the subsequence at first then compare them one by one as following:

```
using namespace std;

class Solution {
    public:
        int findLUSlength(string a, string b) {
            return _check(a, b);
        }

        int _check(string a, string b) {
            cout << a <<':' << b << endl;
            if (!isSubStr(a, b)) {
                return max(a.length(), b.length());
            } else {
                int res = -1;
                for (int i = 0; i < (int)a.length(); i++) {
                    if (!_check(a.substr(0, i) + a.substr(i + 1, a.length()), b)) {
                        res = max(res, (int)max(a.length() - 1, b.length()));
                    }
                }
                for (int i = 0; i < (int)b.length(); i++) {
                    if (!_check(b.substr(0, i) + b.substr(i + 1, a.length()), a)) {
                        res = max(res, (int)max(b.length() - 1, a.length()));
                    }
                }
                return res;
            }
        }

        bool isSubStr(string sub, string source) {
            if (sub.length() > source.length()) {
                return false;
            } else {
                return source.find(sub, 0) != string::npos;
            }
        }
};
```

However, it is much simpler than I thought. You can just write one-line code to solve this problem.

```
int findLUSlength(string a, string b) {
    if(a.size() != b.size())
        return max(a.size(),b.size());
    if(a == b) return -1;
    return a.size();
}
```

Easy to understand. And it gets AC.
