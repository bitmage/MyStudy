---
title: Binary Tree Maximum Path Sum
date: 2017-08-03 10:32:47
tags:
    - Tree
---

> Given a binary tree, find the maximum path sum.
>
> For this problem, a path is defined as any sequence of nodes from some starting node to any node in the tree along the parent-child connections. The path must contain at least one node and does not need to go through the root.
>
> **For example:**
```
Given the below binary tree,

      1
     / \
    2   3

Return 6.
```

<!--more-->

Easy one. But I make a mistake that I forget the node value may be less than 0.

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
        int RES = INT_MIN;
        int pathSum(TreeNode *currentNode) {
            if (currentNode == NULL) {
                return 0;
            }
            int leftPathSum = pathSum(currentNode->left);
            int rightPathSum = pathSum(currentNode->right);
            int currentPathSum = max(currentNode->val + leftPathSum + rightPathSum, currentNode->val);
            currentPathSum = max(currentNode->val + leftPathSum, currentPathSum);
            currentPathSum = max(currentPathSum, currentNode->val + rightPathSum);

            RES = max(RES, currentPathSum);

            return max(currentNode->val + max(leftPathSum, rightPathSum), currentNode->val);
        }

        int maxPathSum(TreeNode* root) {
            pathSum(root);
            return RES;
        }
};
```

It gets AC.
