---
title: Contacts
date: 2017-12-07 16:15:22
tags:
    - Trie Tree
    - Hash Table
---

> This is a problem from [Hackerrank](https://www.hackerrank.com/challenges/ctci-contacts/problem).

<!--more-->

Really a simple one, classic trie tree problem.

```
using namespace std;

class node
{
public:
    char val;
    int times;
    map<char, node> nexts;
};


void display (node n)
{
    cout << n.val << ':' << n.times << endl;
    for (auto i : n.nexts) {
        display(i.second);
    }
}

int main()
{
    ios::sync_with_stdio(false);
    int n;
    cin >> n;

    node *root = new node();
    root->val   = '0';
    root->times = 0;

    for (int times = 0; times < n; times++) {
        string cmd, arg;
        cin >> cmd >> arg;

        if (cmd == "add") {
            node *cur = root;
            for (int i = 0; i < (int)arg.length(); i++) {
                if (cur->nexts.find(arg[i]) == cur->nexts.end()) {
                    node *n = new node();
                    n->val   = arg[i];
                    n->times = 0;
                    cur->nexts[arg[i]] = *n;
                }
                cur = &cur->nexts[arg[i]];
                cur->times++;
            }
        }

        if (cmd == "find") {
            int res = 0;
            node *cur = root;
            bool failed = false;
            for (int i = 0; i < (int)arg.length(); i++) {
                if (cur->nexts.find(arg[i]) == cur->nexts.end()) {
                    failed = true;
                    break;
                }
                cur = &cur->nexts[arg[i]];
            }
            if (failed) {
                res = 0;
            } else {
                res = cur->times;
            }
            cout << res << endl;
        }
    }
    return 0;
}
```

Done.
