---
title: Maximum Width of Binary Tree
date: 2017-08-24 14:10:36
tags:
    - Tree
---

> Given a binary tree, write a function to get the maximum width of the given tree. The width of a tree is the maximum width among all levels. The binary tree has the same structure as a full binary tree, but some nodes are null.
>
> The width of one level is defined as the length between the end-nodes (the leftmost and right most non-null nodes in the level, where the null nodes between the end-nodes are also counted into the length calculation.
>
> **Example 1:**
```
Input:

           1
         /   \
        3     2
       / \     \ 
      5   3     9

Output: 4
Explanation: The maximum width existing in the third level with the length 4 (5,3,null,9).
```
> **Example 2:**
```
Input:

          1
         /
        3
       / \ 
      5   3

Output: 2
Explanation: The maximum width existing in the third level with the length 2 (5,3).
```
> **Example 3:**
```
Input:

          1
         / \
        3   2
       /
      5

Output: 2
Explanation: The maximum width existing in the second level with the length 2 (3,2).
```
> **Example 4:**
```
Input:

          1
         / \
        3   2
       /     \ 
      5       9
     /         \
    6           7
Output: 8
Explanation:The maximum width existing in the fourth level with the length 8 (6,null,null,null,null,null,null,7).
```

<!--more-->

Easy one, you can solve this problem with level-order visit, but the space cost may be huge.

So, you can use the DFS solution.

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

    map<int, int> lefts, rights;

    void visit(TreeNode* currentNode, int preIdx, int level, bool isLeft) {
        if (currentNode == NULL) {
            return;
        }

        int currentIdx = preIdx * 2 - isLeft;
        if (!lefts[level]) {
            lefts[level] = currentIdx;
        }
        lefts[level] = min(lefts[level], currentIdx);
        rights[level] = max(rights[level], currentIdx);

        visit(currentNode->left, currentIdx, level + 1, true);
        visit(currentNode->right, currentIdx, level + 1, false);
    }

    int widthOfBinaryTree(TreeNode* root) {
        if (root == NULL) {
            return 0;
        }
        visit(root->left, 1, 1, true);
        visit(root->right, 1, 1, false);

        int res = 1;
        for (int i = 1; lefts[i] && rights[i]; i++) {
            res = max(rights[i] - lefts[i] + 1, res);
        }

        return res;
    }
};
```

It gets AC.
