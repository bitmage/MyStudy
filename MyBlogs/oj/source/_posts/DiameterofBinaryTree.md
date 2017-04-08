---
title: Diameter of Binary Tree
date: 2017-03-20 20:21:21
tags:
    - Tree
---

> Given a binary tree, you need to compute the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.
>
> Example:
> Given a binary tree
>```
    1
   / \
  2   3
 / \ 
4   5
```
> Return 3, which is the length of the path [4,2,1,3] or [5,2,1,3].
>
> Note: The length of path between two nodes is represented by the number of edges between them.

<!--more-->

During the three days when I was in Hefei to take part in the enter-interview of USTC. So I don't have much time to complete my promise about the daily practise.

Now, I will continue to keep my promise. To be a man of my word is my life purpose.

Now, this is Leetcode No.543. It is an easy one, and you can quickly finish the problem with the pre-order visit and a Path helper function.

Here is my code:

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
        int res;
        int diameterOfBinaryTree(TreeNode* root) {
            res = 0;
            _preOrder(root);
            return res;
        }

        void _preOrder(TreeNode *node) {
            if (node == NULL) {
                return;
            }
            res = max(res, getPathLength(node->left) + getPathLength(node->right));
            _preOrder(node->left);
            _preOrder(node->right);
        }

        int getPathLength(TreeNode* root) {
            if (root == NULL) {
                return 0;
            } else {
                return max(getPathLength(root->left), getPathLength(root->right)) + 1;
            }
        }

};

```

Simple and clean, and easy to understand. It gets AC.
