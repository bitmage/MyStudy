---
title: Average of Levels in Binary Tree
date: 2017-07-09 10:59:55
tags:
    - Tree
    - Stack
---

> Given a non-empty binary tree, return the average value of the nodes on each level in the form of an array.
>
> **Example 1:**
```
Input:
    3
   / \
  9  20
    /  \
   15   7
Output: [3, 14.5, 11]
Explanation:
    The average value of nodes on level 0 is 3,  on level 1 is 14.5
    and on level 2 is 11. Hence return [3, 14.5, 11].
```
> **Note:**
> + The range of node's value is in the range of 32-bit signed integer.

<!--more-->

This is Leetcode No.637 and it is also a problem in Leetcode Weekly Contest.

It is a simple problem if you are familiar with the level order visit of tree data structure.

So the solution is simple to be given.

```
using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

class Solution {
    public:
        vector<double> averageOfLevels(TreeNode* root) {
            vector<TreeNode*> level1, level2;
            vector<double> res;
            level1.push_back(root);
            while (!level1.empty() || !level2.empty()) {
                double sum = 0, count = 0;
                if (!level1.empty()) {
                    while (!level1.empty()) {
                        TreeNode* next = level1[level1.size() - 1];
                        sum += next->val;
                        count++;
                        if (next->left != NULL) {
                            level2.push_back(next->left);
                        }
                        if (next->right != NULL) {
                            level2.push_back(next->right);
                        }
                        level1.pop_back();
                    }
                    res.push_back(sum / count);
                } else if (!level2.empty()) {
                    while (!level2.empty()) {
                        TreeNode* next = level2[level2.size() - 1];
                        sum += next->val;
                        count++;
                        if (next->left != NULL) {
                            level1.push_back(next->left);
                        }
                        if (next->right != NULL) {
                            level1.push_back(next->right);
                        }
                        level2.pop_back();
                    }
                    res.push_back(sum / count);
                }
            }
            return res;
        }
};
```

It gets AC.
