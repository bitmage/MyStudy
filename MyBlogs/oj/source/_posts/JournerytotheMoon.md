---
title: Journery to the Moon
date: 2017-11-30 14:37:31
tags:
    - Union Find
    - Math
---

> This is a problem from Hackerrank. I don't find an easy way to write the problem description here so far.
>
> So, the problem link is [Journey to the Moon](https://www.hackerrank.com/challenges/journey-to-the-moon/problem).

<!--more-->

At first, you should use a union find to find all the astronauts from the same country.

```
int findfather(vector<int> &ps, int idx)
{
    int current = idx;
    while (ps[current] != current) {
        current = ps[current];
    }

    ps[idx] = current;
    return current;
}
```

Then, the code becomes:

```
using namespace std;

int findfather(vector<int> &ps, int idx)
{
    int current = idx;
    while (ps[current] != current) {
        current = ps[current];
    }

    ps[idx] = current;
    return current;
}

int main()
{
    ios::sync_with_stdio(false);
    int n, p;
    cin >> n >> p;

    vector<int> ps(n);
    for (int i = 0; i < n; i++) {
        ps[i] = i;
    }

    vector<pair<int, int>> pairs;
    int child, father;
    for (int i = 0; i < p; i++) {
        cin >> child >> father;
        if (child < father) {
            swap(child, father);
        }
        ps[findfather(ps, child)] = findfather(ps, father);
    }

    map<int, int> group;
    for (int i = 0; i < n; i++) {
        group[findfather(ps, i)]++;
    }

    int64_t sum = 0;
    int64_t res = 0;
    for (auto i : group) {
        res += i.second * sum;
        sum += i.second;
    }
    cout << res << endl;
    return 0;
}
```

One more thing, for three group (a, b, c) you will find that the result will be `groupa * groupb + groupa * groupc + groupb * groupc`. The double for loops to solve the problem. But its time complexity is O(n^2).

And you will find the result is `groupa*0 + groupb*groupa + groupc*(groupa + groupb)`. You can reduce the time complexity to O(n).

This will pass the test cases.
