---
title: Number of Atoms
date: 2017-11-13 20:19:33
tags:
    - Hash Table
    - Depth-first Search
---

> Given a chemical formula (given as a string), return the count of each atom.
>
> An atomic element always starts with an uppercase character, then zero or more lowercase letters, representing the name.
>
> 1 or more digits representing the count of that element may follow if the count is greater than 1. If the count is 1, no digits will follow. For example, H2O and H2O2 are possible, but H1O2 is impossible.
>
> Two formulas concatenated together produce another formula. For example, H2O2He3Mg4 is also a formula.
>
> A formula placed in parentheses, and a count (optionally added) is also a formula. For example, (H2O2) and (H2O2)3 are formulas.
>
> Given a formula, output the count of all elements as a string in the following form: the first name (in sorted order), followed by its count (if that count is more than 1), followed by the second name (in sorted order), followed by its count (if that count is more than 1), and so on.
>
> **Example 1:**
```
Input:
formula = "H2O"
Output: "H2O"
Explanation:
    The count of elements are {'H': 2, 'O': 1}.
```
> **Example 2:**
```
Input:
formula = "Mg(OH)2"
Output: "H2MgO2"
Explanation:
    The count of elements are {'H': 2, 'Mg': 1, 'O': 2}.
```
> **Example 3:**
```
Input:
formula = "K4(ON(SO3)2)2"
Output: "K4N2O14S4"
Explanation:
    The count of elements are {'K': 4, 'N': 2, 'O': 14, 'S': 4}.
```
> **Note:**
> + All atom names consist of lowercase letters, except for the first character which is uppercase.
> + The length of formula will be in the range [1, 1000].
> + formula will only consist of letters, digits, and round parentheses, and is a valid formula as defined in the problem.

<!--more-->

It is really an intresting problem. You need to write a parser for the formula. You can quckly find the relationship:

+ A Atom should be followed by a Number or a new Atom or a `(`
+ A `(` should be followed by a Atom
+ `)` should be followed by a Number

Then, the code can be write first:

```
string parseAtom(string str, int *idx)
{
    string atom = str.substr(*idx, 1);
    (*idx)++;
    while (*idx < str.length() && 'a' <= str[*idx] && str[*idx] <= 'z') {
        atom = atom + str[*idx];
        (*idx)++;
    }
    (*idx)--;
    return atom;
}

int parseNum(string str, int *idx)
{
    int num = 0;
    while (*idx < str.length() && '0' <= str[*idx] && str[*idx] <= '9') {
        num = num * 10 + str[*idx] - '0';
        (*idx)++;
    }
    (*idx)--;
    return num;
}
```

Then combine them into a `( ... )\d` formation.

```
map<string, int> parsePar(string str, int *idx)
{
    (*idx)++; /* '(' */
    map<string, int> res;
    while (str[*idx] != ')') {
        if (str[*idx] == '(') {
            map<string, int> _r = parsePar(str, idx);
            for (auto p : _r) {
                res[p.first] = res[p.first] + _r[p.first];
            }
            (*idx)++; /* last num */
        } else {
            string atom = parseAtom(str, idx);
            if (isNextNum(str, *idx)) {
                (*idx)++;
                int num = parseNum(str, idx);
                res[atom] = res[atom] + num;
            } else {
                res[atom] = res[atom] + 1;
            }
            (*idx)++; /* to the next atom */
        }
    }
    (*idx)++;
    int num = parseNum(str, idx);
    for (auto p : res) {
        res[p.first] = res[p.first] * num;
    }
    return res;
}
```

So, you can make the fomula a little change. You can simplify the code:


```
using namespace std;

class Solution
{
public:
    string parseAtom(string str, int *idx)
    {
        string atom = str.substr(*idx, 1);
        (*idx)++;
        while (*idx < str.length() && 'a' <= str[*idx] && str[*idx] <= 'z') {
            atom = atom + str[*idx];
            (*idx)++;
        }
        (*idx)--;
        return atom;
    }

    int parseNum(string str, int *idx)
    {
        int num = 0;
        while (*idx < str.length() && '0' <= str[*idx] && str[*idx] <= '9') {
            num = num * 10 + str[*idx] - '0';
            (*idx)++;
        }
        (*idx)--;
        return num;
    }

    map<string, int> parsePar(string str, int *idx)
    {
        (*idx)++; /* '(' */
        map<string, int> res;
        while (str[*idx] != ')') {
            if (str[*idx] == '(') {
                map<string, int> _r = parsePar(str, idx);
                for (auto p : _r) {
                    res[p.first] = res[p.first] + _r[p.first];
                }
                (*idx)++; /* last num */
            } else {
                string atom = parseAtom(str, idx);
                if (isNextNum(str, *idx)) {
                    (*idx)++;
                    int num = parseNum(str, idx);
                    res[atom] = res[atom] + num;
                } else {
                    res[atom] = res[atom] + 1;
                }
                (*idx)++; /* to the next atom */
            }
        }
        (*idx)++;
        int num = parseNum(str, idx);
        for (auto p : res) {
            res[p.first] = res[p.first] * num;
        }
        return res;
    }

    bool isNextNum(string str, int idx)
    {
        if (idx < str.length()) {
            return '0' <= str[idx + 1] && str[idx + 1] <= '9';
        }
        return false;
    }

    string countOfAtoms(string formula)
    {
        formula = '(' + formula + ")1";
        int idx = 0;
        map<string, int> atoms = parsePar(formula, &idx);

        string res;
        for (auto p : atoms) {
            if (p.second > 1) {
                res = res + p.first + to_string(p.second);
            } else {
                res = res + p.first;
            }
        }
        return res;
    }
};
```

It gets AC. Done.
