---
title: Bulb Switcher
date: 2017-03-28 13:47:57
tags:
    - Math
    - Brainteaser
---

> There are n bulbs that are initially off. You first turn on all the bulbs. Then, you turn off every second bulb. On the third round, you toggle every third bulb (turning on if it's off or turning off if it's on). For the ith round, you toggle every i bulb. For the nth round, you only toggle the last bulb. Find how many bulbs are on after n rounds.
>
> Example:
>
>```
Given n = 3.

At first, the three bulbs are [off, off, off].
After first round, the three bulbs are [on, on, on].
After second round, the three bulbs are [on, off, on].
After third round, the three bulbs are [on, off, off].

So you should return 1, because there is only one bulb is on.
```

<!--more-->

This is Leetcode No.319. It is a Math problem in my opinion. So, I make it a math way to solve. Code as following:

```
using namespace std;

class Solution {
    public:
        int bulbSwitch(int num) {
            int res = 0;
            for (int idx = 1; idx <= num; idx++) {
                int flag = 0;
                for (int del = 1; del <= idx / del; del++) {
                    if (idx % del == 0) {
                        flag = flag + (idx / del == del ? 1 : 2);
                    }
                }
                if (flag % 2 == 1) {
                    res++;
                }
            }
            return res;
        }
};
```

However, It gets a TLE. This is a O(n) method. So, I think there is other way to solve the problem.

So, I check the discuss and find a better way to solve the problem a really O(n) solution.

You can find which kind of number is on. Those can be multiply by the same num.

So, the code becomes:

```
using namespace std;

class Solution {
    public:
        int bulbSwitch(int num) {
            int res = 0;
            for (int i = 1; i * i <= num; i++) {
                res++;
            }
            return res;
        }
};
```

It gets AC. But I find a O(1) solution in the discuss.

We just need to know, the max idx which under the condition that `idx * idx <= num`

So, the idx is the result. The code can be much clearer.

```
using namespace std;

class Solution {
    public:
        int bulbSwitch(int n) {
            return sqrt(n);
        }
};
```

It gets AC.
