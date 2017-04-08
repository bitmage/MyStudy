---
title: Longest Word in Dictionary through Deleting
date: 2017-03-01 09:19:18
tags:
    - Two Pointers
    - Sort
---

> Given a string and a string dictionary, find the longest string in the dictionary that can be formed by deleting some characters of the given string. If there are more than one possible results, return the longest word with the smallest lexicographical order. If there is no possible result, return the empty string.
>
> Example 1:
>```
Input:
s = "abpcplea", d = ["ale","apple","monkey","plea"]

Output:
"apple"
```
> Example 2:
>```
Input:
s = "abpcplea", d = ["a","b","c"]

Output:
"a"
```
> Note:
>
>  + All the strings in the input will only contain lower-case letters.
>  + The size of the dictionary won't exceed 1,000.
>  + The length of all the strings in the input won't exceed 1,000.

<!--more-->

This is Leetcode No.524, at first I thought that the problem is find the result string can be formed by the characters in the given str. So, I write this answer:

```
class Solution {
    public:
        string findLongestWord(string str, vector<string>& dic) {
            sort(dic.begin(), dic.end());

            int chars[26] = {0}, maxLen = INT_MAX;
            string res;

            for (int i = 0; i < (int)str.length(); i++) {
                chars[str[i] - 'a']++;
            }

            int tmp[26] = {0}, flag = 0;
            for (int i = 0; i < (int)dic.size(); i++) {
                flag = 1;
                memset(tmp, 0, sizeof(tmp));
                for (int j = 0; j < (int)dic[i].length(); j++) {
                    tmp[dic[i][j] - 'a']++;
                }

                for (int j = 0; j < 26; j++) {
                    if (tmp[j] > chars[j]) {
                        flag = -1;
                        break;
                    } else {
                        flag = flag + chars[j] - tmp[j];
                    }
                }

                if (flag >= 0 && flag < maxLen) {
                    maxLen = flag;
                    res = dic[i];
                }
            }

            return res;
        }
};
```

But, it get WA of cause. So I realize that I can only delete chars instead of change its order.

So, here you can use the two-pointers method. To make the code clean:

```
class Solution {
    public:
        string findLongestWord(string str, vector<string>& dic) {
            sort(dic.begin(), dic.end());

            int chars[26] = {0}, maxLen = INT_MIN;
            string res;

            for (int i = 0; i < (int)str.length(); i++) {
                chars[str[i] - 'a']++;
            }

            for (int i = 0; i < (int)dic.size(); i++) {
                if (checkStr(str, dic[i], 0, 0)) {
                    res = (int)dic[i].length() > maxLen ? dic[i] : res;
                    maxLen = max((int)dic[i].length(), maxLen);
                }
            }

            return res;
        }

        bool checkStr(string src, string des, int idx, int idy) {
            if (des.length() > src.length()) {
                return false;
            }
            if (idy == (int)des.length()) {
                return true;
            }
            if (idx == (int)src.length()) {
                return false;
            }
            if (src[idx] == des[idy]) {
                return checkStr(src, des, idx + 1, idy + 1);
            } else {
                return checkStr(src, des, idx + 1, idy);
            }
        }
};
```

I write code like this, but it gets a MLE... Absolutly the stack is overflow. So, I should improve the check method.

```
class Solution {
    public:
        string findLongestWord(string str, vector<string>& dic) {
            sort(dic.begin(), dic.end());

            int chars[26] = {0}, maxLen = INT_MIN;
            string res;

            for (int i = 0; i < (int)str.length(); i++) {
                chars[str[i] - 'a']++;
            }

            for (int i = 0; i < (int)dic.size(); i++) {
                if (checkStr(str, dic[i], 0, 0)) {
                    res = (int)dic[i].length() > maxLen ? dic[i] : res;
                    maxLen = max((int)dic[i].length(), maxLen);
                }
            }

            return res;
        }

        bool checkStr(string src, string des, int idx, int idy) {
            if (des.length() > src.length()) {
                return false;
            }

            while (idy < (int)des.length() && idx < (int)src.length()) {
                if (src[idx] == des[idy]) {
                    idx++;
                    idy++;
                } else {
                    idx++;
                }
            }

            if (idy == (int)des.length()) {
                return true;
            } else {
                return false;
            }
        }
};
```

It gets AC...
