---
title: Fraction Addition and Subtraction
date: 2017-05-21 15:40:23
tags:
    - Math
---


> Given a string representing an expression of fraction addition and subtraction, you need to return the calculation result in string format. The final result should be irreducible fraction. If your final result is an integer, say 2, you need to change it to the format of fraction that has denominator 1. So in this case, 2 should be converted to 2/1.
>
> **Example 1:**
```
Input:"-1/2+1/2"
Output: "0/1"
```
> **Example 2:**
```
Input:"-1/2+1/2+1/3"
Output: "1/3"
```
> **Example 3:**
```
Input:"1/3-1/2"
Output: "-1/6"
```
> **Example 4:**
```
Input:"5/3+1/3"
Output: "2/1"
```
> **Note:**
>  + The input string only contains '0' to '9', '/', '+' and '-'. So does the output.
>  + Each fraction (input and output) has format ±numerator/denominator. If the first input fraction or the output is positive, then '+' will be omitted.
>  + The input only contains valid irreducible fractions, where the numerator and denominator of each fraction will always be in the range [1,10]. If the denominator is 1, it means this fraction is actually an integer in a fraction format defined above.
>  + The number of given fractions will be in the range [1,10].
>  + The numerator and denominator of the final result are guaranteed to be valid and in the range of 32-bit int.

<!--more-->

This is the third problem of Leetcode Weekly Contest. And I thought it will be a complicate one, however, it is easy.

A little upset. Because I just want to do something interesting. The main mission about this problem is to convert the string into a Fraction(I define a struct here), then calculate the result.

The code is:

```
using namespace std;

struct Fraction {
    int up;
    int down;
};

class Solution {
    public:

        void swap(int & a, int & b) {
            int c = a;
            a = b;
            b = c;
        }

        int gcd(int a,int b) {
            if(0 == a) {
                return b;
            }
            if(0 == b) {
                return a;
            }
            if(a > b) {
                swap(a,b);
            }
            for(int c = a % b; c > 0; c = a % b) {
                a = b;
                b = c;
            }
            return b;
        }

        string fractionAddition(string expression) {
            if (expression[0] != '-') {
                expression = '+' + expression;
            }

            vector<Fraction> fracs;
            int commonDown = 1;

            int idx = 0;
            while (idx < (int)expression.length()) {
                bool isPositive = true;
                if (expression[idx] == '-') {
                    isPositive = false;
                } else {
                    isPositive = true;
                }
                idx++;

                Fraction frac;
                frac.up = 0;
                frac.down = 0;
                for (; expression[idx] != '/'; idx++) {
                    frac.up = frac.up * 10 + (int)(expression[idx] - '0');
                }
                frac.up = isPositive ? frac.up : -frac.up;
                idx++;
                for (; idx < (int)expression.size() && !(expression[idx] == '+' || expression[idx] == '-'); idx++) {
                    frac.down = frac.down * 10 + (int)(expression[idx] - '0');
                }
                commonDown = (frac.down * commonDown) / gcd(frac.down, commonDown);
                fracs.push_back(frac);
            }

            for (int i = 0; i < (int)fracs.size(); i++) {
                int times = commonDown / fracs[i].down;
                fracs[i].down = commonDown;
                fracs[i].up = times * fracs[i].up;
            }

            int sum = 0;
            for (int i = 0; i < (int)fracs.size(); i++) {
                sum += fracs[i].up;
            }

            int delta = gcd(abs(sum), commonDown);
            Fraction res;
            if (delta != 0) {
                res.up = sum / delta;
                res.down = commonDown / delta;
            } else {
                res.up = 0;
                res.down = commonDown;
            }

            return to_string(res.up) + '/' + to_string(res.down);
        }
};
```

It gets AC.
