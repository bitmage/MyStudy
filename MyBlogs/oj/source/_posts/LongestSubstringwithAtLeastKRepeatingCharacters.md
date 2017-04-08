---
title: Longest Substring with At Least K Repeating Characters
date: 2017-03-29 09:44:56
tags:
    - String
---

> Find the length of the longest substring T of a given string (consists of lowercase letters only) such that every character in T appears no less than k times.
>
> Example 1:
>```
Input:
s = "aaabb", k = 3
Output:
3
```
> + The longest substring is "aaa", as 'a' is repeated 3 times.
>
> Example 2:
>```
Input:
s = "ababbc", k = 2
Output:
5
```
> + The longest substring is "ababb", as 'a' is repeated 2 times and 'b' is repeated 3 times.

<!--more-->

This is Leetcode No.395. It is a string problem. I can quickly find this solution with O(n^2) time complex.

```
using namespace std;

class Solution {
    public:
        int longestSubstring(string str, int num) {
            int res = 0;
            for (int idx = 0; idx < (int)str.length(); idx++) {
                map<char, int> chars;
                for (int idy = idx; idy < (int)str.length(); idy++) {
                    if (chars.find(str[idy]) != chars.end()) {
                        chars.find(str[idy])->second++;
                    } else {
                        chars.insert(pair<char, int>(str[idy], 1));
                    }

                    bool isOk = true;
                    for (auto i : chars) {
                        if (i.second < num) {
                            isOk = false;
                            break;
                        }
                    }

                    if (isOk) {
                        res = max(res, idy - idx + 1);
                    }
                }
            }
            return res;
        }
};
```

It gets TLE, and we can make it quicker.

+ in the first pass I record counts of every character in a hashmap
+ in the second pass I locate the first character that appear less than k times in the string. this character is definitely not included in the result, and that separates the string into two parts.
+ keep doing this recursively and the maximum of the left/right part is the answer.

```
using namespace std;

class Solution {
    public:
        int longestSubstring(string str, int num) {
            if(str.size() == 0 || num > (int)str.size())   return 0;
            if(num == 0)  return str.size();

            map<char,int> Map;
            for(int i = 0; i < (int)str.size(); i++){
                Map[str[i]]++;
            }

            int idx =0;
            while(idx < (int)str.size() && Map[str[idx]] >= num)    idx++;
            if(idx == (int)str.size()) return str.size();

            int left = longestSubstring(str.substr(0 , idx) , num);
            int right = longestSubstring(str.substr(idx+1) , num);

            return max(left, right);
        }
};
```

It gets AC.
