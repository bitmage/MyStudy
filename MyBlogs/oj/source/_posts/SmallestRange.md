---
title: Smallest Range
date: 2017-07-27 11:14:14
tags:
    - Hash Table
    - Two Pointers
    - String
---

> You have k lists of sorted integers in ascending order. Find the smallest range that includes at least one number from each of the k lists.
>
> We define the range [a,b] is smaller than range [c,d] if b-a < d-c or a < c if b-a == d-c.
>
> **Example 1:**
```
Input:[[4,10,15,24,26], [0,9,12,20], [5,18,22,30]]
Output: [20,24]
Explanation:
    List 1: [4, 10, 15, 24,26], 24 is in range [20,24].
    List 2: [0, 9, 12, 20], 20 is in range [20,24].
    List 3: [5, 18, 22, 30], 22 is in range [20,24].
```
> **Note:**
> + The given list may contain duplicates, so ascending order means >= here.
> + 1 <= k <= 3500
> + -10^5 <= value of elements <= 10^5.

<!--more-->

This is Leetcode No.632. In some case this is a classic two pointers problem. What you should do first is to make every number in these arrays to one line. Then use the two-pointer method to check the range is ok or not.

My AC code is here:

```
using namespace std;

class Solution {
    public:
        bool isOk(vector<int> flag) {
            for (auto i : flag) {
                if (i == 0) {
                    return false;
                }
            }
            return true;
        }

        vector<int> smallestRange(vector<vector<int> >& ranges) {
            map<int, set<int> > numbers;

            for (int idx = 0; idx < (int)ranges.size(); idx++) {
                for (auto num : ranges[idx]) {
                    if (numbers.find(num) != numbers.end()) {
                        numbers.find(num)->second.insert(idx);
                    } else {
                        set<int> idxs;
                        idxs.insert(idx);
                        numbers.insert(pair<int, set<int> >(num, idxs));
                    }

                }
            }

            vector<int> flag(ranges.size(), 0);

            vector<int> res(2);
            res[0] = -(int)pow(10, 6);
            res[1] = (int)pow(10, 6);

            auto startValue = numbers.begin();
            auto endValue = numbers.begin();
            for (auto value : startValue->second) {
                flag[value]++;
            }

            while (endValue != numbers.end()) {
                while (!isOk(flag)) {
                    endValue++;
                    if (endValue == numbers.end()) {
                        break;
                    }
                    for (auto value : endValue->second) {
                        flag[value]++;
                    }
                }

                while (isOk(flag)) {
                    vector<int> _range(2);
                    _range[0] = startValue->first;
                    _range[1] = endValue->first;

                    if (res[1] - res[0] > _range[1] - _range[0]) {
                        res[1] = _range[1];
                        res[0] = _range[0];
                    }

                    for (auto value : startValue->second) {
                        flag[value]--;
                    }

                    if (startValue == endValue) {
                        break;
                    }
                    startValue++;
                }
            }

            return res;
        }
};
```

It gets AC.
