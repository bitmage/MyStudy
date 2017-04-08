---
title: Path Sum III
date: 2017-01-07 19:46:25
tags:
    - Tree
---

> You are given a binary tree in which each node contains an integer value.
>
> Find the number of paths that sum to a given value.
>
> The path does not need to start or end at the root or a leaf, but it must go downwards (traveling only from parent nodes to child nodes).
>
> The tree has no more than 1,000 nodes and the values are in the range -1,000,000 to 1,000,000.
>
> Example:
>
> root = [10,5,-3,3,2,null,11,3,-2,null,1], sum = 8
> ```
      10
     /  \
    5   -3
   / \    \
  3   2   11
 / \   \
3  -2   1
```
> Return 3. The paths that sum to 8 are:
>
> 1.  5 -> 3
> 2.  5 -> 2 -> 1
> 3. -3 -> 11

<!-- more -->


This is Leetcode 437, easy problem, and it's solution as following:

```
class Solution {
    public:
        int pathSum(TreeNode* root, int sum) {
            if(root == NULL)
                return 0;
            return visit(root, sum) + pathSum(root->left, sum) + pathSum(root->right, sum);
        }

        int visit(TreeNode* node, int sum) {
            int res = 0;
            if(node == NULL)
                return res;
            if(sum == node->val)
                res++;
            res += visit(node->left, sum - node->val);
            res += visit(node->right, sum - node->val);
            return res;
        }
};
```

It's time complex is O(nlogn) if it's a balanced tree while O(n^2) in the worst case.

The better solution is the DP solution using a map to store all the value of the tree node.

```
class Solution {
    public:
        int help(TreeNode* root, int sum, unordered_map<int, int>& store, int pre) {
            if (!root) return 0;
            root->val += pre;
            int res = (root->val == sum) + (store.count(root->val - sum) ? store[root->val - sum] : 0);
            store[root->val]++;
            res += help(root->left, sum, store, root->val) + help(root->right, sum, store, root->val);
            store[root->val]--;
            return res;
        }

        int pathSum(TreeNode* root, int sum) {
            unordered_map<int, int> store;
            return help(root, sum, store, 0);
        }
};
```

That's it.
