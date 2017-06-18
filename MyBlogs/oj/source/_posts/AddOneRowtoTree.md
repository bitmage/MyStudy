---
title: Add One Row to Tree
date: 2017-06-18 21:13:48
tags:
    - Tree
---


> Given the root of a binary tree, then value v and depth d, you need to add a row of nodes with value v at the given depth d. The root node is at depth 1.
>
> The adding rule is: given a positive integer depth d, for each NOT null tree nodes N in depth d-1, create two tree nodes with value v as N's left subtree root and right subtree root. And N's original left subtree should be the left subtree of the new left subtree root, its original right subtree should be the right subtree of the new right subtree root. If depth d is 1 that means there is no depth d-1 at all, then create a tree node with value v as the new root of the whole original tree, and the original tree is the new root's left subtree.
>
> **Example 1:**
```
Input:
A binary tree as following:
       4
     /   \
    2     6
   / \   /
  3   1 5

v = 1
d = 2

Output:
       4
      / \
     1   1
    /     \
   2       6
  / \     /
 3   1   5
```
> **Example 2:**
```
Input:
A binary tree as following:
      4
     /
    2
   / \ 
  3   1

v = 1
d = 3

Output:
      4
     /
    2
   / \ 
  1   1
 /     \ 
3       1
```
> **Note:**
>
> + The given d is in range [1, maximum depth of the given tree + 1].
> + The given binary tree has at least one tree node.

<!--more-->

It is one of the Leetcode Weekly Contest. I think this problem is good and worth for writing.

The solution is simple, but the progress of thinking is much of fun.

The solution is:

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

        void dfs(TreeNode* node, int value, int depth) {
            if (node == NULL) return;

            if (depth == 1) {
                TreeNode* leftNode = new TreeNode(value);
                TreeNode* rightNode = new TreeNode(value);

                leftNode->left = node->left;
                rightNode->right = node->right;

                node->left = leftNode;
                node->right = rightNode;
                return;
            } else {
                dfs(node->left, value, depth - 1);
                dfs(node->right, value, depth - 1);
            }
        }

        TreeNode* addOneRow(TreeNode* root, int value, int depth) {
            if (depth == 1) {
                TreeNode* newRoot = new TreeNode(value);
                newRoot->left = root;
                root = newRoot;
            } else {
                dfs(root, value, depth - 1);
            }
            return root;
        }
};
```

It gets AC.
