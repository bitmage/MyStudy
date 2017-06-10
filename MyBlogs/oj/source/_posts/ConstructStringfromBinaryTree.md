---
title: Construct String from Binary Tree
date: 2017-06-10 21:07:35
tags:
    - Tree
    - String
---


> You need to construct a string consists of parenthesis and integers from a binary tree with the preorder traversing way.
>
> The null node needs to be represented by empty parenthesis pair "()". And you need to omit all the empty parenthesis pairs that don't affect the one-to-one mapping relationship between the string and the original binary tree.
>
> Example 1:
```
Input: Binary tree: [1,2,3,4]
       1
     /   \
    2     3
   /
  4

Output: "1(2(4))(3)"

Explanation: Originallay it needs to be "1(2(4)())(3()())",
             but you need to omit all the unnecessary empty parenthesis pairs.
             And it will be "1(2(4))(3)".
```
> Example 2:
```
Input: Binary tree: [1,2,3,null,4]
       1
     /   \
    2     3
     \ 
      4

Output: "1(2()(4))(3)"

Explanation: Almost the same as the first example,
             except we can't omit the first parenthesis pair to break the one-to-one
             mapping relationship between the input and the output.
```

<!--more-->

It is Leetcode No.606. It is a simple problem, you just need to to do a pre-order visit.

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
        string path;
        string tree2str(TreeNode* root) {
            path = "";

            visit(root);

            return path;
        }

        void visit(TreeNode *node) {
            if (node == NULL) {
                return;
            } else if (node->left == NULL && node->right == NULL) {
                path = path + to_string(node->val);
            } else if (node->left == NULL && node->right != NULL) {
                path = path + to_string(node->val);
                path = path + "()";

                path = path + "(";
                visit(node->right);
                path = path + ")";
            } else if (node->left != NULL && node->right == NULL) {
                path = path + to_string(node->val);

                path = path + "(";
                visit(node->left);
                path = path + ")";

            } else if (node->left != NULL && node->right != NULL) {
                path = path + to_string(node->val);

                path = path + "(";
                visit(node->left);
                path = path + ")";

                path = path + "(";
                visit(node->right);
                path = path + ")";
            }
        }
};
```

It gets AC.
