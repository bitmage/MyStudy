---
title: Delete Node in a BST
date: 2017-05-26 14:51:32
tags:
    - Tree
---


> Given a root node reference of a BST and a key, delete the node with the given key in the BST. Return the root node reference (possibly updated) of the BST.
>
> Basically, the deletion can be divided into two stages:
>
> + Search for a node to remove.
> + If the node is found, delete the node.
>
> Note: Time complexity should be O(height of tree).
>
> **Example:**
```
root = [5,3,6,2,4,null,7]
key = 3

    5
   / \
  3   6
 / \   \
2   4   7

Given key to delete is 3. So we find the node with value 3 and delete it.

One valid answer is [5,4,6,2,null,null,7], shown in the following BST.

    5
   / \
  4   6
 /     \
2       7

Another valid answer is [5,2,6,null,4,null,7].

    5
   / \
  2   6
   \   \
    4   7
```

<!--more-->

This is Leetcode No.450, it is a basic problem about your basic ability. So, what you should do is to finish the problem as quick as possible.

So, I divide this problem into two sub-tasks.

1. search the key.
2. delete the node.

Then, here is my AC code:

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

        TreeNode* arrageRightSubTree(TreeNode *currentNode, TreeNode *subRightTree) {
            if (currentNode == NULL) {
                currentNode = subRightTree;
            } else if (currentNode->right == NULL) {
                currentNode->right = subRightTree;
            } else if (currentNode->right != NULL){
                currentNode->right = arrageRightSubTree(currentNode->right, subRightTree);
            }
            return currentNode;
        }


        void deleteNode(TreeNode *currentNode, TreeNode *preNode, bool isleft) {
            if (currentNode->left == NULL && currentNode->right == NULL) { // left node
                if (isleft) {
                    preNode->left = NULL;
                } else {
                    preNode->right = NULL;
                }
            } else if (currentNode->left == NULL) {
                if (isleft) {
                    preNode->left = currentNode->right;
                } else {
                    preNode->right = currentNode->right;
                }
            } else if (currentNode->right == NULL) {
                if (isleft) {
                    preNode->left = currentNode->left;
                } else {
                    preNode->right = currentNode->left;
                }
            } else {
                if (isleft) {
                    preNode->left = currentNode->left;
                    preNode->left->right = arrageRightSubTree(preNode->left->right, currentNode->right);
                } else {
                    preNode->right = currentNode->left;
                    preNode->right->right = arrageRightSubTree(preNode->right->right, currentNode->right);
                }
            }
        }

        void searchKey(TreeNode *currentNode, int key, TreeNode *preNode, bool isleft) {
            if (currentNode == NULL) {
                return;
            }
            if (currentNode->val == key) {
                deleteNode(currentNode, preNode, isleft);
            } else if (currentNode->val > key) {
                searchKey(currentNode->left, key, currentNode, true);
            } else if (currentNode->val < key) {
                searchKey(currentNode->right, key, currentNode, false);
            }
        }

        TreeNode* deleteNode(TreeNode *root, int key) {
            if (root->val == key) {
                TreeNode *subRightTree = root->right;
                root = root->left;
                root = arrageRightSubTree(root, subRightTree);
            } else {
                searchKey(root->left, key, root, true);
                searchKey(root->right, key, root, false);
            }
            return root;
        }
};
```

Not beatiful, but it works.
