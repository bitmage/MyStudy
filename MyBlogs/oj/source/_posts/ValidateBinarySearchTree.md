---
title: Validate Binary Search Tree
date: 2017-11-01 18:38:08
tags:
    - Tree
---

> Given a binary tree, determine if it is a valid binary search tree (BST).
>
> Assume a BST is defined as follows:
> + The left subtree of a node contains only nodes with keys less than the node's key.
> + The right subtree of a node contains only nodes with keys greater than the node's key.
> + Both the left and right subtrees must also be binary search trees.
>
> **Example 1:**
```
    2
   / \
  1   3

Binary tree [2,1,3], return true.
```
> **Example 2:**
```
    1
   / \
  2   3

Binary tree [1,2,3], return false.
```
<!--more-->

This is a simple Tree problem, you just need to do it as you know how to deal with a tree.

```
using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

class Solution
{
public:

    bool isSubOk(TreeNode *node, int *minNum, int *maxNum)
    {
        int leftMax, leftMin, rightMin, rightMax;
        bool isLeftOk, isRightOk;
        if (node->left == NULL && node->right != NULL) {
            isRightOk = isSubOk(node->right, &rightMin, &rightMax);
            *minNum = min(rightMin, node->val);
            *maxNum = max(rightMax, node->val);
            return isRightOk && rightMin > node->val;
        } else if (node->left != NULL && node->right == NULL) {
            isLeftOk = isSubOk(node->left, &leftMin, &leftMax);
            *minNum = min(leftMin, node->val);
            *maxNum = max(leftMax, node->val);
            return isLeftOk && leftMax < node->val;
        } else if (node->left == NULL && node->right == NULL) {
            *minNum = node->val;
            *maxNum = node->val;
            return true;
        }

        isLeftOk = isSubOk(node->left, &leftMin, &leftMax);
        isRightOk = isSubOk(node->right, &rightMin, &rightMax);

        *maxNum = max(max(leftMax, node->val), rightMax);
        *minNum = min(min(leftMin, node->val), rightMin);
        return isLeftOk && isRightOk && node->val > leftMax && node->val < rightMin;
    }

    bool isValidBST(TreeNode* root)
    {
        if (root == NULL) {
            return true;
        }
        int minNum, maxNum;
        return isSubOk(root, &minNum, &maxNum);
    }
};
```

It gets AC. Done.
