---
title: Merge Two Binary Trees
date: 2017-06-13 18:39:43
tags:
    - Tree
---

> Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.
>
> You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.
>
> **Example 1:**
```
Input:
	Tree 1                     Tree 2
          1                         2
         / \                       / \ 
        3   2                     1   3
       /                           \   \ 
      5                             4   7
Output:
Merged tree:
	     3
	    / \
	   4   5
	  / \   \ 
	 5   4   7
```
> Note: The merging process must start from the root nodes of both trees.

<!--more-->

This is Leetcode No.617. Though it is a simple one but I think this problem is good enough to write a blog to mark it.

Because to figure out the problem, you should be familiar with the Tree data structure which is necessary for a software engineer.

So, my answer is as following:

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
        TreeNode* mergeTrees(TreeNode* tree1, TreeNode* tree2) {
            if (tree1 == NULL && tree2 == NULL)
                return NULL;
            TreeNode *root;
            root = visit(tree1, tree2);
            return root;
        }

        TreeNode* visit(TreeNode* tree1Node, TreeNode* tree2Node) {
            TreeNode *currentNode = new TreeNode(0);
            if (tree1Node == NULL && tree2Node == NULL) {
                return NULL;
            } else if (tree1Node == NULL && tree2Node != NULL) {
                currentNode->val = tree2Node->val;
                currentNode->left = visit(NULL, tree2Node->left);
                currentNode->right = visit(NULL, tree2Node->right);
            } else if (tree1Node != NULL && tree2Node == NULL) {
                currentNode->val = tree1Node->val;
                currentNode->left = visit(tree1Node->left, NULL);
                currentNode->right = visit(tree1Node->right, NULL);
            } else if (tree1Node != NULL && tree2Node != NULL) {
                currentNode->val = tree2Node->val + tree1Node->val;
                currentNode->left = visit(tree1Node->left, tree2Node->left);
                currentNode->right = visit(tree1Node->right, tree2Node->right);
            }
            return currentNode;
        }
};
```

It gets AC. Really a good question.
