---
title: Student Attendance Record II
date: 2017-05-02 11:39:44
tags:
    - Dynamic Programming
---

> Given a positive integer n, return the number of all possible attendance records with length n, which will be regarded as rewardable. The answer may be very large, return it after mod 109 + 7.
>
> A student attendance record is a string that only contains the following three characters:
>
> + 'A' : Absent.
> + 'L' : Late.
> + 'P' : Present.
>
> A record is regarded as rewardable if it doesn't contain more than one 'A' (absent) or more than two continuous 'L' (late).
>
> Example 1:
```
Input: n = 2
Output: 8
Explanation:
    There are 8 records with length 2 will be regarded as rewardable:
    "PP" , "AP", "PA", "LP", "PL", "AL", "LA", "LL"
    Only "AA" won't be regarded as rewardable owing to more than one absent times.
```
> Note: The value of n won't exceed 100,000.

<!--more-->

This is Leetcode No.522. It is one of the hard problem.

The first thing you should do is to make the whole problem into several sub-problems.

For example, the `total(n) = endWithA(n) + endWithL(n) + endWithP(n)`. You may understand this progress.

Then the `endWithP(n) = endWithL(n - 1) + endWithP(n - 1) + endWithA(n - 1)`, you can also easy-understand. Because you can add P into any result.

the `endWithL(n) = endWithP(n - 1) + endWithP(n - 2) + endWithA(n - 2) + endWithA(n - 1)`, because you can't add L into a record which ends with L and the character before is L too. 3-L breaks the rule.

the endWithA makes much hard to calculate. You may know that no more than one A allowed in the case.

So, `endWithA(n) = noAP(n - 1) + noAL(n - 1)`. noAP means that record has no A and ends with P.

`noAP(n - 1) = noAL(n - 2) + noAP(n - 2)`, `noAL(n - 1) = noAP(n - 2) + noAP(n - 3)`

`endWithA(n - 1) = noAP(n - 2) + noAL(n - 2)`, `endWithA(n - 2) = noAP(n - 3) + noAL(n - 3)`.

You can make these simple:

`endWithA(n) = noAL(n - 2) + noAP(n - 2) + noAP(n - 2) + noAP(n - 3)`

`endWithA(n) = endWithA(n - 1) + noAP(n - 3) + noAL(n - 3) + noAP(n - 3)`

`endWithA(n) = endWithA(n - 1) + endWithA(n - 2) + noAP(n - 3)`

`endWithA(n) = endWithA(n - 1) + endWithA(n - 2) + endWithA(n - 3)`.

So all the results come.

You can get the code:

```
using namespace std;

class Solution {
    public:
        int checkRecord(int num) {
            vector<long> endWithA(num + 1), endWithP(num + 1), endWithL(num + 1);
            endWithA[0] = 0;
            endWithL[0] = 0;
            endWithP[0] = 0;
            if (num > 0) {
                endWithA[1] = 1;
                endWithL[1] = 1;
                endWithP[1] = 1;
            }
            if (num > 1) {
                endWithA[2] = 2;
                endWithL[2] = 3;
            }
            if (num > 2) {
                endWithA[3] = 4;
            }

            int DELTA = 1000000007;
            int res = 0;
            for (int idx = 0; idx <= num; idx++) {
                endWithA[idx - 1] %= DELTA;
                endWithL[idx - 1] %= DELTA;
                endWithP[idx - 1] %= DELTA;

                if (idx > 1) {
                    endWithP[idx] = endWithA[idx - 1] + endWithL[idx - 1] + endWithP[idx - 1];
                }
                if (idx > 2) {
                    endWithL[idx] = endWithP[idx - 1] + endWithA[idx - 1] + endWithP[idx - 2] + endWithA[idx - 2];
                }
                if (idx > 3) {
                    endWithA[idx] = endWithA[idx - 1] + endWithA[idx - 2] + endWithA[idx - 3];
                }
                endWithP[idx] %= DELTA;
                endWithL[idx] %= DELTA;
                endWithA[idx] %= DELTA;
            }

            res = (endWithA[num] + endWithL[num] + endWithP[num]) % DELTA;

            return res;
        }
};

```

It gets AC.
