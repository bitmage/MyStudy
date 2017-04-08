---
title: Most Frequent Subtree Sum
date: 2017-02-07 09:23:57
tags:
    - Tree
    - Hash Table
---

> Given the root of a tree, you are asked to find the most frequent subtree sum. The subtree sum of a node is defined as the sum of all the node values formed by the subtree rooted at that node (including the node itself). So what is the most frequent subtree sum value? If there is a tie, return all the values with the highest frequency in any order.
>
> Examples 1
> + Input:
> ```
  5
 / \
2  -3
```
> + return [2, -3, 4], since all the values happen only once, return all of them in any order.
>
> Examples 2
> + Input:
> ```
  5
 / \
2  -5
```
> + return [2], since 2 happens twice, however -5 only occur once.
>
> Note: You may assume the sum of values in any subtree is in the range of 32-bit signed integer.

<!--more-->

This is Leetcode 508, and it is a standard problem based on Tree. We just need to mark the last condition of the subTree.

So, the code is as following:

```
class Solution {
    map<int, int> nodes;
    public:
        vector<int> findFrequentTreeSum(TreeNode* root) {
            nodes.clear();
            _visit(root);

            int maxTimes = INT_MIN;
            for (auto i : nodes) {
                if (i.second > maxTimes) {
                    maxTimes = i.second;
                }
            }

            vector<int> res;
            for (auto i : nodes) {
                if (i.second == maxTimes) {
                    res.push_back(i.first);
                }
            }

            return res;
        }

        int _visit(TreeNode* currentNode) {
            if (currentNode == NULL) {
                return 0;
            }

            if (currentNode->left == NULL && currentNode->right == NULL) {
                _record(currentNode->val);
                return currentNode->val;
            }

            if (currentNode->left != NULL && currentNode->right == NULL) {
                int value = currentNode->val + _visit(currentNode->left);
                _record(value);
                return value;
            }

            if (currentNode->left == NULL && currentNode->right != NULL) {
                int value = currentNode->val + _visit(currentNode->right);
                _record(value);
                return value;
            }

            if (currentNode->left != NULL && currentNode->right != NULL) {
                int value = currentNode->val + _visit(currentNode->left) + _visit(currentNode->right);
                _record(value);
                return value;
            }

            return 0;
        }

        void _record(int value) {
            if (nodes.find(value) != nodes.end()) {
                nodes.find(value)->second++;
            } else {
                nodes.insert(pair<int, int>(value, 1));
            }
        }
};
```

Done, it gets AC.
