---
title: K Empty Slots
date: 2017-09-24 16:02:41
tags:
    - Array
---


> There is a garden with N slots. In each slot, there is a flower. The N flowers will bloom one by one in N days. In each day, there will be exactly one flower blooming and it will be in the status of blooming since then.
>
> Given an array flowers consists of number from 1 to N. Each number in the array represents the place where the flower will open in that day.
>
> For example, flowers[i] = x means that the unique flower that blooms at day i will be at position x, where i and x will be in the range from 1 to N.
>
> Also given an integer k, you need to output in which day there exists two flowers in the status of blooming, and also the number of flowers between them is k and these flowers are not blooming.
>
> If there isn't such day, output -1.
>
> **Example 1:**
```
Input:
flowers: [1,3,2]
k: 1
Output: 2
Explanation: In the second day, the first and the third flower have become blooming.
```
> **Example 2:**
```
Input:
flowers: [1,2,3]
k: 1
Output: -1
```
> **Note:**
>
> + The given array will be in the range [1, 20000].

<!--more-->

It is a simple problem, if you can transfer this array into from day[position] to position[day].

The code is:

```
using namespace std;


class Solution {
public:
    int kEmptySlots(vector<int>& flowers, int k) {
        vector<int> positions(flowers.size());
        for (int i = 0; i < (int)flowers.size(); i++) {
            positions[flowers[i] - 1] = i;
        }
        int res = INT_MAX;
        for (int i = 0; i < (int)positions.size() - k - 1; i++) {
            int idx = i;
            int idy = i + k + 1;

            bool isOk = true;
            int maxDay = max(positions[idx], positions[idy]);
            for (int x = idx + 1; x <= idy - 1; x++) {
                if (positions[x] < maxDay) {
                    isOk = false;
                    break;
                }
            }

            if (isOk) {
                res = min(res, maxDay + 1);
            }
        }
        return res == INT_MAX ? -1 : res;
    }
};
```

It gets AC.
