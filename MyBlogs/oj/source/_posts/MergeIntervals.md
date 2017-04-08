---
title: Merge Intervals
date: 2017-03-30 10:09:26
tags:
    - Array
    - Sort
---

> Given a collection of intervals, merge all overlapping intervals.
>
> For example:
>```
Given [1,3],[2,6],[8,10],[15,18],
return [1,6],[8,10],[15,18].
```

<!--more-->

This is Leetcode No.56. I think this is a easy-thought problem. The solution is simple but the corner cases are many.

So, what I do first is to sort the intervals first (by the start idx).

For example, [2, 3], [1, 4] I will make them [1, 4], [2, 3] order.

Then, I start to merge them one by one until no one can be merged.

```
using namespace std;

struct Interval {
    int start;
    int end;
    Interval() : start(0), end(0) {}
    Interval(int s, int e) : start(s), end(e) {}
};

int cmp(const Interval a, const Interval b) {
    if (a.start == b.start && a.end == b.end) {
        return 0;
    } else {
        return a.start < b.start;
    }
}

class Solution {
    public:
        vector<Interval> merge(vector<Interval>& intervals) {
            sort(intervals.begin(), intervals.end(), cmp);
            vector<Interval> current;

            if (intervals.size() == 0) {
                return current;
            }

            bool canMerge = false;

            for (int idx = 0; idx < (int)intervals.size() - 1; idx++) {
                if (intervals[idx].end >= intervals[idx + 1].start) {
                    canMerge = true;
                    intervals[idx].start = min(intervals[idx].start, intervals[idx + 1].start);
                    intervals[idx + 1].start = min(intervals[idx].start, intervals[idx + 1].start);
                    intervals[idx + 1].end = max(intervals[idx].end, intervals[idx + 1].end);
                    intervals[idx].end = max(intervals[idx].end, intervals[idx + 1].end);
                }
            }

            current.push_back(intervals[0]);
            for (int idx = 1; idx < (int)intervals.size(); idx++) {
                if (intervals[idx].start == current.back().start && intervals[idx].end == current.back().end) {
                    continue;
                } else {
                    current.push_back(intervals[idx]);
                }
            }

            if (canMerge) {
                return merge(current);
            } else {
                return current;
            }
        }
};
```

It gets AC. However, if I can modify the class code block, I can overide the '==' operator then use set to keep Interval unique.


