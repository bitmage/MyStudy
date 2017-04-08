---
title: Teemo Attacking
date: 2017-02-02 20:17:16
tags:
    - Array
---

> In LLP world, there is a hero called Teemo and his attacking can make his enemy Ashe be in poisoned condition. Now, given the Teemo's attacking ascending time series towards Ashe and the poisoning time duration per Teemo's attacking, you need to output the total time that Ashe is in poisoned condition.
>
> You may assume that Teemo attacks at the very beginning of a specific time point, and makes Ashe be in poisoned condition immediately.
>
> Example 1:
> + Input: [1,4], 2
> + Output: 4
> + Explanation: At time point 1, Teemo starts attacking Ashe and makes Ashe be poisoned immediately. This poisoned status will last 2 seconds until the end of time point 2. And at time point 4, Teemo attacks Ashe again, and causes Ashe to be in poisoned status for another 2 seconds. So you finally need to output 4.
>
> Example 2:
> + Input: [1,2], 2
> + Output: 3
> + Explanation: At time point 1, Teemo starts attacking Ashe and makes Ashe be poisoned. This poisoned status will last 2 seconds until the end of time point 2. However, at the beginning of time point 2, Teemo attacks Ashe again who is already in poisoned status. Since the poisoned status won't add up together, though the second poisoning attack will still work at time point 2, it will stop at the end of time point 3. So you finally need to output 3.
>
> Note:
> + You may assume the length of given time series array won't exceed 10000.
> + You may assume the numbers in the Teemo's attacking time series and his poisoning time duration per attacking are non-negative integers, which won't exceed 10,000,000.

<!--more-->

This is Leetcode 495. It is an interesting problem, I like LLP, and Teemo is my favorite hero. So, I understand the problem description quickly and figure it out rapidly.

Its tag is Array but I think use bitset will be a better solution if the time number is small.

Here is the solution:

```
class Solution {
    public:
        int findPoisonedDuration(vector<int>& timeSeries, int duration) {
            if (timeSeries.size() == 0) {
                return 0;
            }

            int res = 0;

            sort(timeSeries.begin(), timeSeries.end());

            for (int i = 0; i < (int)timeSeries.size() - 1; i++) {
                if (timeSeries[i] + duration >= timeSeries[i + 1]) {
                    res = res + (timeSeries[i + 1] - timeSeries[i]);
                } else {
                    res = res + duration;
                }
            }

            return res + duration;
        }
};
```

So easy, and it gets AC.
