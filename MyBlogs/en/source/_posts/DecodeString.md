---
title: Decode String
date: 2017-01-27 23:11:47
tags:
    - Stack
    - Depth-first Search
---

> Given an encoded string, return it's decoded string.
>
> The encoding rule is: k[encoded_string], where the encoded_string inside the square brackets is being repeated exactly k times. Note that k is guaranteed to be a positive integer.
>
> You may assume that the input string is always valid; No extra white spaces, square brackets are well-formed, etc.
>
> Furthermore, you may assume that the original data does not contain any digits and that digits are only for those repeat numbers, k. For example, there won't be input like 3a or 2[4].
>
> Examples:
>
> + s = "3[a]2[bc]", return "aaabcbc".
> + s = "3[a2[c]]", return "accaccacc".
> + s = "2[abc]3[cd]ef", return "abcabccdcdcdef".

<!--more-->

This is Leetcode 394, and it's a problem with much fun. I have two solutions here. The first one is like what I use to write my own url rule parser. You can find [here - https://mikecoder.cn/post/164](https://mikecoder.cn/post/164).

But, its time complex is O(n^2). So, I should find a better solution. For example I can decode and read the string at the same time not just to find the pattern.

So, I will use two stacks to store the value:

```
class Solution {
    public:
        string decodeString(string str) {
            stack<string> chars;
            stack<int> nums;
            string res;
            int num = 0;
            for(char c: str) {
                if(isdigit(c)) {
                    num = num*10 + (c - '0');
                } else if(isalpha(c)) {
                    res.push_back(c);
                } else if(c == '[') {
                    chars.push(res);
                    nums.push(num);
                    res = "";
                    num = 0;
                } else if(c == ']') {
                    string tmp = res;
                    for(int i = 0; i < nums.top()-1; ++i) {
                        res += tmp;
                    }
                    res = chars.top() + res;
                    chars.pop(); nums.pop();
                }
            }
            return res;
        }
};
```

Here is the solution and it gets AC.
