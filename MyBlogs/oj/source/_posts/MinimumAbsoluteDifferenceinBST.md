---
title: Minimum Absolute Difference in BST
date: 2017-03-03 10:00:29
tags:
    - Binary Search Tree
---

> Given a binary search tree with non-negative values, find the minimum absolute difference between values of any two nodes.
>
> Example:
>
>```
Input:
1
 \
  3
 /
2
Output:
1
```
> Explanation:
> The minimum absolute difference is 1, which is the difference between 2 and 1 (or between 2 and 3).
>
> Note: There are at least two nodes in this BST.

<!--more-->

This is Leetcode No.530. At first I thought this problem wants us to find out the minimum absolute difference between in the neighbour nodes.

So the wrong result is as following:

```
class Solution {
    public:
        int res;

        int getMinimumDifference(TreeNode* root) {
            res = INT_MAX;

            _visit(root->left, root->val);
            _visit(root->right, root->val);

            return res;
        }

        void _visit(TreeNode *node, int pre) {
            if (node == NULL) {
                return;
            }
            if (abs(node->val - pre) < res) {
                res = abs(node->val - pre);
            }
            _visit(node->left, node->val);
            _visit(node->right, node->val);
        }
};
```

So, I found the target is to find the minimum result between any node. So the result is:

```
class Solution {
    public:
        int res;
        vector<int> nodes;

        int getMinimumDifference(TreeNode* root) {
            res = INT_MAX;
            nodes.clear();

            _visit(root);

            sort(nodes.begin(), nodes.end());

            for (int i = 0; i < (int)nodes.size() - 1; i++) {
                res = min(res, abs(nodes[i] - nodes[i + 1]));
            }

            return res;
        }

        void _visit(TreeNode *node) {
            if (node == NULL) {
                return;
            }
            nodes.push_back(node->val);
            _visit(node->left);
            _visit(node->right);
        }
};
```

Here I use a vector to store every node. Its time complex is O(nlogn), it's fast but I can be better. to use the feature of BST. to find the array in order.

But it already gets AC.
