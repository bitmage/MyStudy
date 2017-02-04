---
title: Find Mode in Binary Search Tree
date: 2017-02-01 23:59:43
tags:
    - Tree
---

> Given a binary search tree (BST) with duplicates, find all the mode(s) (the most frequently occurred element) in the given BST.
>
> Assume a BST is defined as follows:
>
> + The left subtree of a node contains only nodes with keys less than or equal to the node's key.
> + The right subtree of a node contains only nodes with keys greater than or equal to the node's key.
> + Both the left and right subtrees must also be binary search trees.
>
> For example:
> + Given BST [1,null,2,2],
> + return [2].
>
> Note: If a tree has more than one mode, you can return them in any order.
>
> Follow up: Could you do that without using any extra space? (Assume that the implicit stack space incurred due to recursion does not count).

<!--more-->

This is Leetcode 501. And it is a easy one. You can just use pre-order visit the tree and store the value and its appearances. Return the max times.

So, here comes the answer:

```
class Solution {
    public:
        map<int, int> nodes;

        vector<int> findMode(TreeNode* root) {
            nodes.clear();

            _preOrder(root);

            int times = INT_MIN;
            for (auto i : nodes) {
                if (i.second > times) {
                    times = i.second;
                }
            }

            vector<int> res;
            for (auto i : nodes) {
                if (i.second == times) {
                    res.push_back(i.first);
                }
            }

            return res;
        }

        void _preOrder(TreeNode* node) {
            if (node == NULL) {
                return;
            }
            _visit(node);
            _preOrder(node->left);
            _preOrder(node->right);
        }

        void _visit(TreeNode* node) {
            if (nodes.find(node->val) == nodes.end()) {
                nodes.insert(pair<int, int>(node->val, 1));
            } else {
                nodes.find(node->val)->second++;
            }
        }
};
```

**Follow up:**

It's easy to improve the code. Because we can use the BST feature, we can know the current node's value how many times.

Not now for the result.


