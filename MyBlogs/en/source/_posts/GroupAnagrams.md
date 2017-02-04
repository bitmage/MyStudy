---
title: Group Anagrams
date: 2017-01-10 14:07:57
tags:
    - Hash Table
    - String
---

> Given an array of strings, group anagrams together.
>
> For example, given: ["eat", "tea", "tan", "ate", "nat", "bat"],
> Return:
>
>       [
>           ["ate", "eat","tea"],
>           ["nat","tan"],
>           ["bat"]
>       ]
>
> Note: All inputs will be in lower-case.

<!--more-->

This is Leetcode 49, what a easy problem. We can quickly figure out two method:

The first one is:
> 1. choose one string as the standard one.
> 2. for each to check if this one has the same chars as the standard.
> 3. if same, than, mark it has been used, and store it to the result.

The time complex of this method is O(n^2*m), m is dependent on the length of the string. It's is not a fast method, but it uses the least memory.

The second one is to use the map or hash map to help.
> 1. for each to count its structure. for example, tae can be descriped as '1a0b0c0d1e0f0g0h0i0j0k0l0m0n0o0p0q0r0s1t0u0v0w0x0y0z'
> 2. then make the key to the map and check each word which has the same structure.

The time copolex of this method is O(n*m).

So, I use the second one to write the result code as following:

```
using namespace std;

class Solution {
    public:
        vector<vector<string> > groupAnagrams(vector<string>& strs) {
            vector<string> keys;
            map<string, vector<string> > retMap;
            for (int i = 0; i < (int)strs.size(); i++) {
                int chars[26] = {0};
                for (int j = 0; j < (int)strs[i].length(); j++) {
                    chars[strs[i][j] - 'a']++;
                }
                string currentKey = "";
                for (int j = 0; j < 26; j++) {
                    currentKey = currentKey + (char)('0' + chars[j]);
                    currentKey = currentKey + (char)('a' + j);
                }

                if (retMap.find(currentKey) != retMap.end()) {
                    retMap[currentKey].push_back(strs[i]);
                } else {
                    vector<string> currentValue;
                    currentValue.push_back(strs[i]);
                    retMap.insert(pair<string, vector<string> >(currentKey, currentValue));
                }
            }

            vector<vector<string> > res;
            for (pair<string, vector<string> > values: retMap) {
                res.push_back(values.second);
            }
            return res;
        }
};
```

And it gets AC.
