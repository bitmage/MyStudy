---
title: Find Largest Element in Each Row
date: 2017-02-12 12:27:38
tags:
    - Tree
    - Hash Table
---

> You need to find the largest value in each row of a binary tree.
>
> Example:
>
> Input:
>```
    1
   / \
  3   2
 / \   \ 
5   3   9
```
> Output: [1, 3, 9]

<!--more-->

It is one of Leetcode Weekly Contest 19, and also No.515. This is an easy problem.

What we need to do is to level-order visit and find the largest value for each level.

So, here is my solution:

```
class Solution {
    public:
        vector<int> findValueMostElement(TreeNode* root) {
            vector<int> res;
            if (root == NULL) {
                return res;
            }
            map<int, int> levelValues;
            int level = 0;
            list<TreeNode> level1, level2;
            level1.push_back(*root);

            while (level1.size() > 0 || level2.size() > 0) {
                if (level % 2 == 0) {
                    while (level1.size() > 0) {
                        TreeNode currentNode = level1.front();
                        if (currentNode.left != NULL) {
                            level2.push_back(*currentNode.left);
                        }
                        if (currentNode.right != NULL) {
                            level2.push_back(*currentNode.right);
                        }
                        if (levelValues.find(level) != levelValues.end()) {
                            if (currentNode.val > levelValues.find(level)->second) {
                                levelValues.find(level)->second = currentNode.val;
                            }
                        } else {
                            levelValues.insert(pair<int, int>(level, currentNode.val));
                        }
                        level1.pop_front();
                    }
                    level++;
                } else {
                    while (level2.size() > 0) {
                        TreeNode currentNode = level2.front();
                        if (currentNode.left != NULL) {
                            level1.push_back(*currentNode.left);
                        }
                        if (currentNode.right != NULL) {
                            level1.push_back(*currentNode.right);
                        }
                        if (levelValues.find(level) != levelValues.end()) {
                            if (currentNode.val > levelValues.find(level)->second) {
                                levelValues.find(level)->second = currentNode.val;
                            }
                        } else {
                            levelValues.insert(pair<int, int>(level, currentNode.val));
                        }
                        level2.pop_front();
                    }
                    level++;
                }
            }

            for (auto i : levelValues) {
                res.push_back(i.second);
            }
            return res;
        }
};
```

It gets AC.
