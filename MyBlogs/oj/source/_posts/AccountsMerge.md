---
title: Accounts Merge
date: 2017-11-05 12:22:37
tags:
    - Union Find
    - Hash Table
---

> Given a list accounts, each element accounts[i] is a list of strings, where the first element accounts[i][0] is a name, and the rest of the elements are emails representing emails of the account, in sorted order.
>
> Now, we would like to merge these accounts. Two accounts definitely belong to the same person if there is some email that is common to both accounts. Note that even if two accounts have the same name, they may belong to different people as people could have the same name. A person can have any number of accounts initially, but all of their accounts definitely have the same name.
>
> After merging the accounts, return the accounts in the format they were given: the first element of each account is the name, and the rest of the elements are emails in sorted order. The accounts themselves can be returned in any order.
>
> **Example 1:**
```
Input:
accounts = [["John", "johnsmith@mail.com", "john00@mail.com"], ["John", "johnnybravo@mail.com"], ["John", "johnsmith@mail.com", "john_newyork@mail.com"], ["Mary", "mary@mail.com"]]
Output: [["John", 'john00@mail.com', 'john_newyork@mail.com', 'johnsmith@mail.com'],  ["John", "johnnybravo@mail.com"], ["Mary", "mary@mail.com"]]
Explanation:
    The first and third John's are the same person as they have the common email "johnsmith@mail.com".
    The second John and Mary are different people as none of their email addresses are used by other accounts.
    We could return these lists in any order, for example the answer [['Mary', 'mary@mail.com'], ['John', 'johnnybravo@mail.com'],
    ['John', 'john00@mail.com', 'john_newyork@mail.com', 'johnsmith@mail.com']] would still be accepted.
```
> **Note:**
> + The length of accounts will be in the range [1, 1000].
> + The length of accounts[i] will be in the range [1, 10].
> + The length of accounts[i][j] will be in the range [1, 30].

<!--more-->

It is a Union Find problem, so, you just need to understand that mail-mail is a connection.

Then, we use mail[1] is the parent mail for the rest mails.

The code is:

```
using namespace std;

class Solution
{
public:
    string findFather(map<string, string> &m_ms, string m)
    {
        if (m_ms.find(m) == m_ms.end()) {
            return m;
        }
        string current = m_ms[m];
        while (m_ms[current] != current) {
            current = m_ms[m_ms[current]];
        }
        m_ms[m] = current;
        return m_ms[m];
    }

    vector<vector<string>> accountsMerge(vector<vector<string>>& accounts)
    {
        map<string, string> m_ms;
        map<string, string> m_ns;
        for (int i = 0; i < (int)accounts.size(); i++) {
            m_ms[accounts[i][1]] = findFather(m_ms, accounts[i][1]);
            for (int j = 2; j < (int)accounts[i].size(); j++) {
                m_ms[accounts[i][j]] = findFather(m_ms, accounts[i][1]);
            }
        }

        for (int i = 0; i < (int)accounts.size(); i++) {
            for (int j = 1; j < (int)accounts[i].size(); j++) {
                m_ns[accounts[i][j]] = accounts[i][0];
            }

            for (int j = 1; j < (int)accounts[i].size(); j++) {
                m_ms[findFather(m_ms, m_ms[accounts[i][j]])] = findFather(m_ms, m_ms[accounts[i][1]]);
            }
        }

        map<pair<string, string>, set<string>> mails;
        for (auto i : m_ms) {
            mails[pair<string, string>(m_ns[findFather(m_ms, i.second)], m_ms[i.second])].insert(i.first);
        }

        vector<vector<string>> res;

        for (auto m : mails) {
            vector<string> r;
            r.push_back(m.first.first);
            for (auto i : m.second) {
                r.push_back(i);
            }
            res.push_back(r);
        }

        return res;
    }
};
```

It gets AC.
