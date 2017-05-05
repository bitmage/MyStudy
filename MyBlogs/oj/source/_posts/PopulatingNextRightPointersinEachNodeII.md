---
title: Populating Next Right Pointers in Each Node II
date: 2017-05-05 15:35:04
tags:
    - Tree
    - Depth-first Search
---


> Follow up for problem "Populating Next Right Pointers in Each Node".
>
> What if the given tree could be any binary tree? Would your previous solution still work?
>
> Note:
>
> + You may only use constant extra space.
>
> For example,
> Given the following binary tree,
```
    1
   /  \
  2    3
 / \    \
4   5    7
```
> After calling your function, the tree should look like:
```
    1 -> NULL
   /  \
  2 -> 3 -> NULL
 /  \    \
4 -> 5 -> 7 -> NULL
```

<!--more-->

This is leetcode No.117 and it is a extended problem of leetcode No.116 which can use O(n) extra space which means you can use level order visit the tree and create the relationship.

But here, you are only allowed to use constant extra space, which means you can't use the solution of No.116.

But you can still use the DFS solution.

Because you start with the root Node. So, you can quickly find the second-level nodes. Use the nodes to point next-level nodes. At last you will have the result.

Here comes the AC code:

```
class Solution {
    public:
        void connect(TreeLinkNode *root) {
            TreeLinkNode *current = root, *header = NULL, *levelIterator;
            while (current != NULL) {
                while (current != NULL) {
                    if (header == NULL) {
                        if (current->left != NULL && current->right != NULL) {
                            header = current->left;
                            levelIterator = header;
                            levelIterator->next = current->right;
                            levelIterator = levelIterator->next;
                        }
                        if (current->left == NULL && current->right != NULL) {
                            header = current->right;
                            levelIterator = header;
                        }
                        if (current->left != NULL && current->right == NULL) {
                            header = current->left;
                            levelIterator = header;
                        }
                    } else {
                        if (current->left != NULL && current->right != NULL) {
                            levelIterator->next = current->left;
                            levelIterator = levelIterator->next;
                            levelIterator->next = current->right;
                            levelIterator = levelIterator->next;
                        }
                        if (current->left == NULL && current->right != NULL) {
                            levelIterator->next = current->right;
                            levelIterator = levelIterator->next;
                        }
                        if (current->left != NULL && current->right == NULL) {
                            levelIterator->next = current->left;
                            levelIterator = levelIterator->next;
                        }
                    }
                    current = current->next;
                }
                current = header;
                header = NULL;
            }
        }
};
```

It gets AC.
