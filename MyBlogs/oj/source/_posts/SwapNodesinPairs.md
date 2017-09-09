---
title: Swap Nodes in Pairs
date: 2017-09-10 00:27:03
tags:
    - Linked List
---

> Given a linked list, swap every two adjacent nodes and return its head.
>
> **For example:**
>
> Given 1->2->3->4, you should return the list as 2->1->4->3.
>
> Your algorithm should use only constant space. You may not modify the values in the list, only nodes itself can be changed.

<!--more-->

Easy one, what you should do carefully is to find the relationship between the adjacent nodes.

My AC code is:

```
using namespace std;

struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};

class Solution {
public:
    ListNode* swapPairs(ListNode* head) {
        if (head == NULL || head->next == NULL) {
            return head;
        }

        ListNode newhead(0);
        newhead.next = head;

        ListNode *p, *q, *h;
        h = &newhead;
        p = newhead.next;
        q = p->next;

        // h, p, q
        while (h != NULL && p != NULL && q != NULL) {
            h->next = q;
            p->next = q->next;
            q->next = p;

            h = p;
            p = h->next;
            q = h->next == NULL ? NULL : h->next->next;
        }

        return newhead.next;
    }
};
```

It gets passed.
