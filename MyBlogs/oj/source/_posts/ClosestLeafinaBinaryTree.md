---
title: Closest Leaf in a Binary Tree
date: 2017-12-10 11:51:06
tags:
    - Binary Tree
---


> Given a binary tree where every node has a unique value, and a target key k, find the closest leaf node to target k in the tree.
>
> A node is called a leaf if it has no children.
>
> In the following examples, the input tree is represented in flattened form row by row. The actual root tree given will be a TreeNode object.
>
> **Example 1:**
```
Input:
root = [1, 3, 2], k = 1
Diagram of binary tree:
          1
         / \
        3   2

Output: 2 (or 3)

Explanation: Either 2 or 3 is the closest leaf node to 1.
```
> **Example 2:**
```
Input:
root = [1], k = 1
Output: 1

Explanation: The closest leaf node is the root node itself.
```
> **Example 3:**
```
Input:
root = [1,2,3,4,null,null,null,5,null,6], k = 2
Diagram of binary tree:
             1
            / \
           2   3
          /
         4
        /
       5
      /
     6

Output: 3
Explanation: The leaf node with value 3 (and not the leaf node with value 6) is closest to the node with value 2.
```
> **Note:**
>
> + root represents a binary tree with at least 1 node and at most 1000 nodes.
> + Every node has a unique node.val in range [1, 1000].
> + There exists some node in the given binary tree for which node.val == k.

<!--more-->

It is an interesting problem. Because you should divide the problem into a few subproblem.

First, calculate the depth for each node. Then find the lowest common ancestor to the left and the target node.

Then `(depth[leaf] + depth[k] - 2*depth[lca])` is the answer;

The code is:

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

    int res = INT_MAX, minDepth = INT_MAX;
    vector<int> leaves;
    map<int, int> depths;

    void calcHeights(TreeNode *node, int depth)
    {
        if (node == NULL) {
            return;
        }

        if (node->left == NULL && node->right == NULL) {
            leaves.push_back(node->val);
        }

        depths[node->val] = depth;

        calcHeights(node->left, depth + 1);
        calcHeights(node->right, depth + 1);
    }

    int LCA(TreeNode *node, int k, int l)
    {
        if (node == NULL) {
            return 0;
        }
        if (node->val == k || node->val == l) {
            return node->val;
        }

        int left = LCA(node->left, k, l);
        int right = LCA(node->right, k, l);
        if (left && right) {
            return node->val;
        }
        return left ? left : right;
    }

    int findClosestLeaf(TreeNode* root, int k)
    {
        calcHeights(root, 0);
        for (int i = 0; i < (int)leaves.size(); i++) {
            int parent = LCA(root, leaves[i], k);
            int depth = depths[leaves[i]] + depths[k] - 2*depths[parent];
            if (minDepth > depth) {
                res = leaves[i];
                minDepth = depth;
            }
        }

        return res;
    }
};
```

It gets AC.
