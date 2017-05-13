---
title: Magical String
date: 2017-05-12 23:36:25
tags:
    - Simulation
---


> A magical string S consists of only '1' and '2' and obeys the following rules:
>
> The string S is magical because concatenating the number of contiguous occurrences of characters '1' and '2' generates the string S itself.
>
> The first few elements of string S is the following: S = "1221121221221121122……"
>
> If we group the consecutive '1's and '2's in S, it will be:
>
> + 1 22 11 2 1 22 1 22 11 2 11 22 ......
>
> and the occurrences of '1's or '2's in each group are:
>
> + 1 2 2 1 1 2 1 2 2 1 2 2 ......
>
> You can see that the occurrence sequence above is the S itself.
>
> Given an integer N as input, return the number of '1's in the first N number in the magical string S.
>
> Note: N will not exceed 100,000.
>
> Example 1:
```
Input: 6
Output: 3
Explanation: The first 6 elements of magical string S is "12211" and it contains three 1's, so return 3.
```

<!--more-->

This is Leetcode No.481. It is a simple problem. I don't know why I choose this problem as today's task. But, the thought and the progress are both simple and easy to think.

The main idea is to simulate the whole progree on the magical string. But the magical string is not unique as we start from 2 instead of 1, the problem is another story.

The code is:

```
using namespace std;

class Solution {
    public:
        int magicalString(int num) {
            vector<int> NUM;

            NUM.push_back(1);
            NUM.push_back(2);
            NUM.push_back(2);
            NUM.push_back(1);
            NUM.push_back(1);
            NUM.push_back(2);

            int idxNUM = 4;
            bool isOne = true;
            while ((int)NUM.size() <= num) {
                if (NUM[idxNUM] == 2) {
                    NUM.push_back(isOne ? 1 : 2);
                }
                NUM.push_back(isOne ? 1 : 2);
                isOne = !isOne;
                idxNUM++;
            }

            int res = 0;
            for (int i = 0; i < num; i++) {
                if (NUM[i] == 1) {
                    res++;
                }
            }
            return res;
        }
};
```

It gets AC.
