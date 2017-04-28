---
title: Find the Closest Palindrome
date: 2017-04-28 09:49:04
tags:
    - String
---

> Given an integer n, find the closest integer (not including itself), which is a palindrome.
>
> The 'closest' is defined as absolute difference minimized between two integers.
>
> Example 1:
>```
Input: "123"
Output: "121"
```
> Note:
> + The input n is a positive integer represented by string, whose length will not exceed 18.
> + If there is a tie, return the smaller one as answer.

<!--more-->

This is Leetcode No.564. It is a fun problem. You will think about as many corner cases as you can. For example, the case:

+ 1
+ 0
+ 999
+ 900
+ 100
+ 200
+ 14041
+ 1421
+ 200

There are different solutions to deal with these cases. As 999, we should return 1001, and 0 we should return 1, and 1 we return 0. As 100, we should return 99. As 200, we should return 202 instead of 191. But when 100, we should return 99.

So, you should think about the correct solution. And I think that's why this problem is Hard Tagged too many corner cases to thinking.

As we can take these cases into consideration. We can start to write the code.

So, you can add 1 and 0 and -1 to the num when you try to simplify its logic.

```
using namespace std;

class Solution {
    public:
        long long DELTA, RES, NUM;

        void update(string current) {
            try {
                if (abs(NUM - stoll(current)) < DELTA && abs(NUM - stoll(current)) != 0) {
                    RES = stoll(current);
                    DELTA = abs(NUM - stoll(current));
                } else if (abs(NUM - stoll(current)) == DELTA && stoll(current) < RES) {
                    RES = stoll(current);
                    DELTA = abs(NUM - stoll(current));
                }
            } catch(exception e) {}
        }

        void generate(string left) {
            string right = left;
            std::reverse(right.begin(), right.end());

            string current = left + right;
            update(current);
            current = left + right.substr(1);
            update(current);
        }

        string nearestPalindromic(string num) {
            DELTA = std::stoll(num);
            NUM   = std::stoll(num);

            string left = num.substr(0, (num.length() + 1)/ 2);

            long long _left = stoll(left);
            generate(to_string(_left - 1));
            generate(to_string((_left - 1) * 10 + 9));
            generate(to_string(_left));
            generate(to_string(_left + 1));
            generate(to_string((_left + 1) / 10));

            return std::to_string(RES);
        }
};
```

It gets AC.

