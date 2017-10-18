---
title: Binary Tree Postorder Traversal
date: 2017-10-18 19:18:44
tags:
    - Tree
---


> Given a binary tree, return the postorder traversal of its nodes' values.
>
> **For example:**
> Given binary tree {1,#,2,3},
```
   1
    \
     2
    /
   3

return [3,2,1].
```
> **Note: **
> + Recursive solution is trivial, could you do it iteratively?

<!--more-->

Easy one, you can quickly write the trivial solution. But the iterativel solution is much more interesting.

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
    vector<int> postorderTraversal(TreeNode* root) {
        vector<int> res;
        if (root == NULL) {
            return res;
        }

        vector<TreeNode*> nodes;
        nodes.push_back(root);

        while (!nodes.empty()) {
            TreeNode *currentNode = nodes.back();
            nodes.pop_back();

            if (currentNode->left == NULL && currentNode->right == NULL) {
                res.push_back(currentNode->val);
            } else if (currentNode->left != NULL && currentNode->right != NULL) {
                TreeNode *node = (TreeNode*)malloc(sizeof(TreeNode));
                node->val = currentNode->val;
                node->left = NULL;
                node->right = NULL;
                nodes.push_back(node);
                nodes.push_back(currentNode->right);
                nodes.push_back(currentNode->left);
            } else if (currentNode->left != NULL && currentNode->right == NULL) {
                TreeNode *node = (TreeNode*)malloc(sizeof(TreeNode));
                node->val = currentNode->val;
                node->left = NULL;
                node->right = NULL;
                nodes.push_back(node);
                nodes.push_back(currentNode->left);
            } else if (currentNode->left == NULL && currentNode->right != NULL) {
                TreeNode *node = (TreeNode*)malloc(sizeof(TreeNode));
                node->val = currentNode->val;
                node->left = NULL;
                node->right = NULL;
                nodes.push_back(node);
                nodes.push_back(currentNode->right);
            }
        }

        return res;
    }
};
```

It gets AC. Done.
