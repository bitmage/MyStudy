---
title: Equal Tree Partition
date: 2017-08-23 15:32:06
tags:
    - Tree
---


> Given a binary tree with n nodes, your task is to check if it's possible to partition the tree to two trees which have the equal sum of values after removing exactly one edge on the original tree.
>
> **Example 1:**
```
Input:
    5
   / \
  10 10
    /  \
   2   3

Output: True
Explanation:
        5
    /
    10

    Sum: 15

    10
    /  \
    2    3

    Sum: 15
```
> Example 2:
```
Input:
    1
   / \
  2  10
    /  \
   2   20

Output: False
Explanation:
    You can't split the tree into two trees with equal sum after removing exactly one edge on the tree.
```
> **Note:**
> + The range of tree node value is in the range of [-100000, 100000].
> + 1 <= n <= 10000

<!--more-->

At first, I think that I should write a function to sum the value of all the subnodes of the current node, but, It must be TLE.

Then, I find that how about use a postorder visit to find the left tree and right tree.

The code comes:

```
using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {} };

class Solution {

public:
    int sum = 0;
    void inOrder(TreeNode* currentNode) {
        if (currentNode == NULL) {
            return;
        }
        inOrder(currentNode->left);
        sum += currentNode->val;
        inOrder(currentNode->right);
    }

    bool flag = false;
    int postOrder(TreeNode* currentNode) {
        if (flag) {
            return 1;
        }
        if (currentNode == NULL) {
            return 0;
        }

        int res = postOrder(currentNode->left) + postOrder(currentNode->right);
        res += currentNode->val;

        if (res == sum / 2) {
            flag = true;
        }
        return res;
    }

    bool checkEqualTree(TreeNode* root) {
        if (root == NULL || (root->left == NULL && root->right == NULL)) {
            return false;
        }

        inOrder(root);
        if (sum % 2 != 0) {
            return false;
        }

        postOrder(root);
        return flag;
    }
};
```

It gets AC.
