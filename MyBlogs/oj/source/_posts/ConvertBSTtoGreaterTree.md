---
title: Convert BST to Greater Tree
date: 2017-04-01 22:14:27
tags:
    - Tree
---


> Given a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus sum of all keys greater than the original key in BST.
>
> Example:
>```
Input: The root of a Binary Search Tree like this:
   5
 /   \
2     13

Output: The root of a Greater Tree like this:
   18
  /   \
20     13
```

<!--more-->

This is Leetcode No.538. It is a simple problem. What you should do first is to be familiar with the Tree data structure.

First, you should do preorder traversal of the whole tree and find the sum value.

The use the inorder traversal of the whle tree.

You will find that the inorder traversal will calc the left child first then the root one and the right one. So you can set the value of each.

Here is my solution:

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
        int sum;

        TreeNode* convertBST(TreeNode* root) {
            sum = 0;
            preOrder(root);
            setValue(root);

            return root;
        }

        void setValue(TreeNode* node) {
            if (node == NULL) {
                return;
            }
            setValue(node->left);
            int val = node->val;
            node->val = sum;
            sum = sum - val;
            setValue(node->right);
        }

        void preOrder(TreeNode* node) {
            if (node == NULL) {
                return;
            }
            sum = node->val + sum;
            preOrder(node->left);
            preOrder(node->right);
        }
};
```

Easy to understand and it gets AC.
