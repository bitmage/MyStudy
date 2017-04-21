---
title: Fraction to Recurring Decimal
date: 2017-04-18 22:02:48
tags:
    - Hash Table
    - Math
---

> Given two integers representing the numerator and denominator of a fraction, return the fraction in string format.
>
> If the fractional part is repeating, enclose the repeating part in parentheses.
>
> For example,
>```
Given numerator = 1, denominator = 2, return "0.5".
Given numerator = 2, denominator = 1, return "2".
Given numerator = 2, denominator = 3, return "0.(6)".
```

<!--more-->

This is Leetcode No.166. And I think it is a pure math problem.

At first I write code like below:

```
using namespace std;

class Solution {

    public:
        string fractionToDecimal(int numerator, int denominator) {
            int integer = numerator > denominator ? numerator / denominator : 0;
            int remain = numerator % denominator;

            string res = to_string(integer);
            if (remain == 0) {
                return res;
            }

            res = res + ".";

            vector<int> nums;
            map<int, int> DP;

            while (DP.find(remain) == DP.end() && remain != 0) {
                nums.push_back(remain);
                DP.insert(pair<int, int>(remain, remain * 10 / denominator));
                remain = (remain * 10) % denominator;
            }

            string decimal = ""; int idx = 0;
            for (; idx < (int)nums.size() && remain != nums[idx]; idx++) {
                decimal = decimal + to_string(DP.find(nums[idx])->second);
            }
            if (idx != (int)nums.size()) {
                decimal += "(";
                for (int idy = idx; idy < (int)nums.size(); idy++) {
                    decimal = decimal + to_string(DP.find(nums[idy])->second);
                }
                decimal += ")";
            }
            return res + decimal;
        }
};
```

But it gets WA when the case is `-2147483648, -1` with ERROR: *division of -2147483648 by -1 cannot be represented in type 'int'*.

So, I change the number in the program from int to long. And it must be drawn attention that you must be concerned about the corner cases:
+ numerator < 0 and denominator > 0
+ numerator > 0 and denominator > 0
+ numerator < 0 and denominator < 0
+ numerator > 0 and denominator < 0
+ numerator > 0 and denominator = 0
+ numerator = 0 and denominator = 0

```
using namespace std;

class Solution {

    public:
        string fractionToDecimal(int numerator, int denominator) {
            long integer = abs((long)numerator / (long)denominator) > 0 ? abs((long)numerator / (long)denominator) : 0;
            long remain = abs((long)numerator % (long)denominator);

            string res = to_string(integer);
            if ((long long)numerator * (long long)denominator < 0) {
                res = "-" + res;
            }

            if (remain == 0) {
                return res;
            }

            res = res + ".";

            vector<long> nums;
            map<long, long> DP;

            while (DP.find(remain) == DP.end() && remain != 0) {
                nums.push_back(remain);
                DP.insert(pair<long, long>(remain, abs(remain * 10 / denominator)));
                remain = abs((remain * 10) % denominator);
            }

            string decimal = ""; long idx = 0;
            for (; idx < (long)nums.size() && remain != nums[idx]; idx++) {
                decimal = decimal + to_string(DP.find(nums[idx])->second);
            }
            if (idx != (long)nums.size()) {
                decimal += "(";
                for (long idy = idx; idy < (long)nums.size(); idy++) {
                    decimal = decimal + to_string(DP.find(nums[idy])->second);
                }
                decimal += ")";
            }
            return res + decimal;
        }
};
```

It gets AC.
