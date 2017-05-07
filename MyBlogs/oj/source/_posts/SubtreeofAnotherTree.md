---
title: Subtree of Another Tree
date: 2017-05-07 14:19:25
tags:
    - Tree
---

> Given two non-empty binary trees s and t, check whether tree t has exactly the same structure and node values with a subtree of s. A subtree of s is a tree consists of a node in s and all of this node's descendants. The tree s could also be considered as a subtree of itself.
>
> Example 1:
```
Given tree s:

     3
    / \
   4   5
  / \
 1   2
Given tree t:
   4
  / \
 1   2
Return true, because t has the same structure and node values with a subtree of s.
```
> Example 2:
```
Given tree s:

     3
    / \
   4   5
  / \
 1   2
    /
   0
Given tree t:
   4
  / \
 1   2
Return false.
```

<!--more-->

This is one of the Leetcode contest weekly 31. The reason why I choose this problem to write is that I think the problem is fun.

Though we can use the recisous solution to solve the problem and the solution is simple. But I like the process in which way I think.

The solution is that:

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
        bool isSubtree(TreeNode* source, TreeNode* target) {
            if (source == NULL) {
                return false;
            }
            bool res = check(source, target);
            return res || isSubtree(source->left, target) || isSubtree(source->right, target);
        }

        bool check(TreeNode *source, TreeNode *target) {
            if (source == NULL && target != NULL ) {
                return false;
            } else if (source != NULL && target == NULL) {
                return false;
            } else if (source == NULL && target == NULL) {
                return true;
            }

            if (source == target || source->val == target->val) {
                if (source != NULL && target != NULL) {
                    return check(source->left, target->left) && check(source->right, target->right);
                }
            }
            return false;
        }
};
```

It gets AC.
