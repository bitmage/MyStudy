---
title: Longest Uncommon Subsequence II
date: 2017-04-07 22:04:08
tags:
    - String
    - Hashmap
---


> Given a list of strings, you need to find the longest uncommon subsequence among them. The longest uncommon subsequence is defined as the longest subsequence of one of these strings and this subsequence should not be any subsequence of the other strings.
>
> A subsequence is a sequence that can be derived from one sequence by deleting some characters without changing the order of the remaining elements. Trivially, any string is a subsequence of itself and an empty string is a subsequence of any string.
>
> The input will be a list of strings, and the output needs to be the length of the longest uncommon subsequence. If the longest uncommon subsequence doesn't exist, return -1.
>
> Example 1:
>```
Input: "aba", "cdc", "eae"
Output: 3
```
> Note:
>
> + All the given strings' lengths will not exceed 10.
> + The length of the given list will be in the range of [2, 50].

<!--more-->

This is Leetcode No.522. It is a extended problem of Longest Uncommon Subsequence I. So, we can use the solution before to solve this problem.

We can use the following code to check whether the two strings have the common subsequence:

```
bool hasCommon(string a,string b){
    int remainA = a.size();
    int remainB = b.size();
    for(;remainA > 0 && remainB > 0;){
        int i = a.size() - remainA;
        int j = b.size() - remainB;
        if(a.at(i) == b.at(j)){
            remainA--;
            remainB--;
        }else{
            remainB--;
        }
    }
    return remainA==0;
}
```

Then, we use the O(n^2) method to check the strings one by one in the list.

```
int findLUSlength(vector<string>& strs) {
    int res = -1;
    for (int idx = 0; idx < (int)strs.size(); idx++) {
        int isAll = true;
        for (int idy = 0; idy < (int)strs.size(); idy++) {
            if (idx != idy) {
                if (hasCommon(strs[idx], strs[idy])) {
                    isAll = false;
                    break;
                }
            }
        }
        if (isAll) {
            res = max(res, (int)strs[idx].length());
        }
    }
    return res;
}
```

So, the solution is:
```
using namespace std;

class Solution {
    public:
        int findLUSlength(vector<string>& strs) {
            int res = -1;
            for (int idx = 0; idx < (int)strs.size(); idx++) {
                int isAll = true;
                for (int idy = 0; idy < (int)strs.size(); idy++) {
                    if (idx != idy) {
                        if (hasCommon(strs[idx], strs[idy])) {
                            isAll = false;
                            break;
                        }
                    }
                }
                if (isAll) {
                    res = max(res, (int)strs[idx].length());
                }
            }
            return res;
        }

        //This is used to determine if a has common subsequence in b
        bool hasCommon(string a,string b){
            int remainA = a.size();
            int remainB = b.size();
            for(;remainA > 0 && remainB > 0;){
                int i = a.size() - remainA;
                int j = b.size() - remainB;
                if(a.at(i) == b.at(j)){
                    remainA--;
                    remainB--;
                }else{
                    remainB--;
                }
            }
            return remainA==0;
        }
};

```

It gets AC.
