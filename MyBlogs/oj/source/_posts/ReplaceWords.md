---
title: Replace Words
date: 2017-07-23 14:39:05
tags:
    - Trie Tree
    - Hash Table
---

> In English, we have a concept called root, which can be followed by some other words to form another longer word - let's call this word successor. For example, the root an, followed by other, which can form another word another.
>
> Now, given a dictionary consisting of many roots and a sentence. You need to replace all the successor in the sentence with the root forming it. If a successor has many roots can form it, replace it with the root with the shortest length.
>
> You need to output the sentence after the replacement.
>
> **Example 1:**
```
Input: dict = ["cat", "bat", "rat"]
sentence = "the cattle was rattled by the battery"
Output: "the cat was rat by the bat"
```
> **Note:**
>
> + The input will only have lower-case letters.
> + 1 <= dict words number <= 1000
> + 1 <= sentence words number <= 1000
> + 1 <= root length <= 100
> + 1 <= sentence words length <= 1000

<!--more-->

This is the last problem of Leetcode Weekly Contest 42. I think it is a simple problem. Because we can use a hashmap and string function to solve the problem instead of trie tree.

So, to make my grade better, I just use the easy solution to pass this problem.

My AC Code is as following:

```
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @author Mike
 * @project oj.code
 * @date 23/07/2017, 10:26 AM
 * @e-mail mike@mikecoder.cn
 */
public class Solution {
    public String replaceWords(List<String> dict, String sentence) {
        Set<String> keySets = new HashSet<>();
        for (String word : dict) {
            keySets.add(word);
        }
        String[] words = sentence.split(" ");
        for (int i = 0; i < words.length; i++) {
            for (String key : keySets) {
                if (words[i].startsWith(key)) {
                    words[i] = key;
                }
            }
        }

        StringBuffer res = new StringBuffer();
        for (String word : words) {
            res.append(word);
            res.append(" ");
        }
        return res.toString().trim();
    }
}
```

Easy one.