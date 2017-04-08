---
title: Find Left Most Element
date: 2017-02-12 12:12:49
tags:
    - Tree
---

> Given a binary tree, find the leftmost value in the last row of the tree.
>
> Example 1:
>
> Input:
> ```
  2
 / \
1   3
```
> Output: 1
>
> Example 2:
>
> Input:
> ```
    1
   / \
  2   3
 /   / \
4   5   6
   /
  7
```
> Output: 7
>
> Note: You may assume the tree (i.e., the given root node) is not NULL.

<!--more-->

This is one of the Leetcode Weekly contest 19, and also No.513. It is easy, you can use the preorder visit and find the max level one.

```
class Solution {
    public:
        int maxLevel, res;
        int findLeftMostNode(TreeNode* root) {
            res = root->val;
            maxLevel = 0;
            _preOrder(root, 0);
            return res;
        }

        void _preOrder(TreeNode* node, int level) {
            if (node == NULL) {
                return;
            }
            _preOrder(node->left, level + 1);
            if (level > maxLevel) {
                maxLevel = level;
                res = node->val;
            }
            _preOrder(node->right, level + 1);

        }
};
```

It gets AC.
