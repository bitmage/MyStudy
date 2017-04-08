---
title: Complex Number Multiplication
date: 2017-04-02 11:13:15
tags:
    - Math
    - String
---

> Given two strings representing two complex numbers.
>
> You need to return a string representing their multiplication. Note i2 = -1 according to the definition.
>
> Example 1:
>```
Input: "1+1i", "1+1i"
Output: "0+2i"
Explanation: (1 + i) * (1 + i) = 1 + i2 + 2 * i = 2i, and you need convert it to the form of 0+2i.
```
> Example 2:
>```
Input: "1+-1i", "1+-1i"
Output: "0+-2i"
Explanation: (1 - i) * (1 - i) = 1 + i2 - 2 * i = -2i, and you need convert it to the form of 0+-2i.
```
> Note:
>
> + The input strings will not have extra blank.
> + The input strings will be given in the form of a+bi, where the integer a and b will both belong to the range of [-100, 100]. And the output should be also in this form.

<!--more-->

This is Leetcode No.537. It is not a hard-thinking problem. You should just need to care more about the corner case.

For some reason that I recommand you to solve this problem with Java. Because I think Java has better APIs to deal with Strings.

Here is my solution:

```
/**
 * @author Mike
 * @project oj.code
 * @date 02/04/2017, 1:08 PM
 * @e-mail mike@mikecoder.cn
 */
public class Solution {

    class Num {
        int a;
        int b;

        @Override
        public String toString() {
            return a + "+" + b + "i";
        }
    }

    public Num convert(String num) {
        int real, fake;
        String[] nums = num.split("\\+");
        real = Integer.valueOf(nums[0]);
        fake = Integer.valueOf(nums[1].substring(0, nums[1].length() - 1));

        Num res = new Num();
        res.a = real;
        res.b = fake;

        return res;
    }

    public Num calc(Num num1, Num num2) {
        Num res = new Num();
        res.a = num1.a * num2.a - num1.b * num2.b;
        res.b = num1.b * num2.a + num1.a * num2.b;

        return res;
    }

    public String complexNumberMultiply(String a, String b) {
        Num num1 = convert(a);
        Num num2 = convert(b);

        Num res = calc(num1, num2);

        return res.toString();
    }
}
```

It is simple. I just create a new class to store the number of inputs. Then I calculate them with the rules provided by the description.

It gets AC.
