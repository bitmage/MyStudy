---
title: Split Linked List in Parts
date: 2017-11-13 14:17:24
tags:
    - List
    - Simulation
---

> Given a (singly) linked list with head node root, write a function to split the linked list into k consecutive linked list "parts".
>
> The length of each part should be as equal as possible: no two parts should have a size differing by more than 1. This may lead to some parts being null.
>
> The parts should be in order of occurrence in the input list, and parts occurring earlier should always have a size greater than or equal parts occurring later.
>
> Return a List of ListNode's representing the linked list parts that are formed.
> Examples 1->2->3->4, k = 5 // 5 equal parts [ [1], [2], [3], [4], null ]
>
> **Example 1:**
```
Input:
root = [1, 2, 3], k = 5
Output: [[1],[2],[3],[],[]]
Explanation:
    The input and each element of the output are ListNodes, not arrays.
    For example, the input root has root.val = 1, root.next.val = 2, \root.next.next.val = 3, and root.next.next.next = null.
    The first element output[0] has output[0].val = 1, output[0].next = null.
    The last element output[4] is null, but it's string representation as a ListNode is [].
```
> **Example 2:**
```
Input:
root = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], k = 3
Output: [[1, 2, 3, 4], [5, 6, 7], [8, 9, 10]]
Explanation:
    The input has been split into consecutive parts with size difference at most 1, and earlier parts are a larger size than the later parts.
```
> **Note:**
> + The length of root will be in the range [0, 1000].
> + Each value of a node in the input will be an integer in the range [0, 999].
> + k will be an integer in the range [1, 50].

<!--more-->

You just need to find the two different cases, when the `k > len` or `k <= len`.

Easy one.

```
using namespace std;

struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};

class Solution
{
public:
    vector<ListNode*> splitListToParts(ListNode* root, int k)
    {
        unsigned long long len = 0;
        ListNode *current = root;
        while (current != NULL) {
            len++;
            current = current->next;
        }
        vector<ListNode*> res;
        if (len <= k) {
            unsigned long long count = 0;
            ListNode *current = root, *next = (root == NULL ? NULL : root->next);
            while (current != NULL) {
                count++;
                res.push_back(current);
                current->next = NULL;
                current = next;
                if (next != NULL) {
                    next = next->next;
                }
            }
            for (int i = count; i < k; i++) {
                res.push_back(NULL);
            }
        } else {
            unsigned long long size = len/k;
            unsigned long long remain = len%k;
            unsigned long long count = 0;

            ListNode *current = root, *next = NULL;
            res.push_back(current);

            while (current != NULL) {
                count++;

                if ((remain > 0 && count == size + 1)
                    || (remain == 0 && count == size)) {

                    remain = max(0, (int)remain - 1);
                    next = current->next;
                    current->next = NULL;
                    if (next != NULL)
                        res.push_back(next);

                    current = next;
                    count = 0;
                } else {
                    current = current->next;
                }
            }
        }
        return res;
    }
};
```

It gets AC. Done.
