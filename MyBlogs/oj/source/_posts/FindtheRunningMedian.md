---
title: Find the Running Median
date: 2017-12-11 15:42:06
tags:
    - Array
    - Heap
---

> This is a problem from [hackerrank](https://www.hackerrank.com/challenges/ctci-find-the-running-median/problem).
>
> The median of a dataset of integers is the midpoint value of the dataset for which an equal number of integers are less than and greater than the value. To find the median, you must first sort your dataset of integers in non-decreasing order.

<!--more-->

Easy one. Just use two heap to store the numbers from large to small and small to large.

And keep the size of two heaps is not large than 1.

```
using namespace std;

bool compare_less(const int& a, const int& b)
{
    return b < a;
}

bool compare_greater(const int& a, const int& b)
{
    return a < b;
}

int main()
{
    int x, n;
    cin >> n;
    vector<int> v0, v1;
    v0.reserve(n);
    v1.reserve(n);

    float m = nanf("");

    for(int i = 0; i < n; i++) {
        cin >> x;

        if (isnan(m) || (float)x <= m) {
            v0.push_back(x);
            push_heap(v0.begin(), v0.end(), compare_greater);
        } else {
            v1.push_back(x);
            push_heap(v1.begin(), v1.end(), compare_less);
        }

        while (v1.size() > v0.size()+1) {
            x = v1[0];
            pop_heap(v1.begin(), v1.end(), compare_less);
            v1.pop_back();
            v0.push_back(x);
            push_heap(v0.begin(), v0.end(), compare_greater);
        }
        while (v0.size() > v1.size()+1) {
            x = v0[0];
            pop_heap(v0.begin(), v0.end(), compare_greater);
            v0.pop_back();
            v1.push_back(x);
            push_heap(v1.begin(), v1.end(), compare_less);
        }
        if (v0.size() > v1.size())
            m = v0[0];
        else if (v1.size() > v0.size())
            m = v1[0];
        else
            m = (v0[0]+v1[0])/2.0f;

        printf("%.1f\n", m);
    }

    return 0;
}
```

It gets AC.
