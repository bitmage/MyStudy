---
title: Minimum Time Difference
date: 2017-03-14 15:50:10
tags:
    - String
---


> Given a list of 24-hour clock time points in "Hour:Minutes" format, find the minimum minutes difference between any two time points in the list.
>
> Example 1:
>```
Input: ["23:59","00:00"]
Output: 1
```
> Note:
>
> + The number of time points in the given list is at least 2 and won't exceed 20000.
> + The input time is legal and ranges from 00:00 to 23:59.

<!--more-->

This is Leetcode No.539. It is an esay problem, the most thing I think is that we should pay attention to the time convertion.

I make the timestamp into minutes. So that I can find the order between them.

Then, I sort the array and try to find the minimum value of the distance.

I can make the solution more quick by just counting the neighbour and the head and tail value instead of count every pair.

```
using namespace std;

class Solution {
public:
    int findMinDifference(vector<string>& timePoints) {
        vector<int> mins;

        int res = INT_MAX;

        for (int i = 0; i < (int)timePoints.size(); i++) {
            int hour = atoi(timePoints[i].substr(0, 2).c_str()) * 60;
            int minutes = atoi(timePoints[i].substr(3, 5).c_str()) + hour;
            mins.push_back(minutes);
        }

        sort(mins.begin(), mins.end());

        for (int idx = 0; idx < (int)mins.size(); idx++) {
            for (int idy = idx + 1; idy < (int)mins.size(); idy++) {
                res = min(res, mins[idy] - mins[idx]);
                res = min(res, 60 * 24 - (mins[idy] - mins[idx]));
            }
        }

        return res;
    }
};
```

But, I AC the problem, the improvement? who cares.
