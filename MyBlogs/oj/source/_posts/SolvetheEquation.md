---
title: Solve the Equation
date: 2017-07-15 20:07:06
tags:
    - Stack
---


> Solve a given equation and return the value of x in the form of string "x=#value". The equation contains only '+', '-' operation, the variable x and its coefficient.
>
> If there is no solution for the equation, return "No solution".
>
> If there are infinite solutions for the equation, return "Infinite solutions".
>
> If there is exactly one solution for the equation, we ensure that the value of x is an integer.
>
> **Example 1:**
```
Input: "x+5-3+x=6+x-2"
Output: "x=2"
```
> **Example 2:**
```
Input: "x=x"
Output: "Infinite solutions"
```
> **Example 3:**
```
Input: "2x=x"
Output: "x=0"
```
> **Example 4:**
```
Input: "2x+3x-6x=x+2"
Output: "x=-1"
```
> **Example 5:**
```
Input: "x=x+2"
Output: "No solution"
```

<!--more-->

First, I just finished my two-week travel. From Jiangsu to Hunan to Shanxi to Hebei then back to Jiangsu.

So, I seldom updated thie blog during the travel. But now, I returned. All will be the same.

This is Leetcode No.640. Easy problem. The key point is to write a status machine to store the value of `x` and the number.

```
package mike.code.oj.leetcode.SolvetheEquation;

/**
 * @author Mike
 * @project oj.code
 * @date 09/07/2017, 10:04 AM
 * @e-mail mike@mikecoder.cn
 */
public class Solution {
    public String solveEquation(String equation) {
        String[] sentence = equation.split("=");
        int x_count = 0, sum = 0;
        boolean nextOp = true;
        String block = "";
        for (int i = 0; i < sentence[0].length(); i++) {
            if (sentence[0].charAt(i) == '+' || sentence[0].charAt(i) == '-' && block.length() > 0) {
                if (block.charAt(block.length() - 1) == 'x') {
                    if (nextOp) {
                        if (block.length() == 1) {
                            x_count++;
                        } else {
                            x_count = x_count + Integer.valueOf(block.substring(0, block.length() - 1));
                        }
                    } else {
                        if (block.length() == 1) {
                            x_count--;
                        } else {
                            x_count = x_count - Integer.valueOf(block.substring(0, block.length() - 1));
                        }
                    }
                } else {
                    if (nextOp) {
                        sum = sum + Integer.valueOf(block);
                    } else {
                        sum = sum - Integer.valueOf(block);
                    }
                }
                block = "";
            }
            if (sentence[0].charAt(i) == '+') {
                nextOp = true;
                continue;
            }
            if (sentence[0].charAt(i) == '-') {
                nextOp = false;
                continue;
            }
            block = block + sentence[0].charAt(i);
        }
        if (block.charAt(block.length() - 1) == 'x') {
            if (nextOp) {
                if (block.length() == 1) {
                    x_count++;
                } else {
                    x_count = x_count + Integer.valueOf(block.substring(0, block.length() - 1));
                }
            } else {
                if (block.length() == 1) {
                    x_count--;
                } else {
                    x_count = x_count - Integer.valueOf(block.substring(0, block.length() - 1));
                }
            }
        } else {
            if (nextOp) {
                sum = sum + Integer.valueOf(block);
            } else {
                sum = sum - Integer.valueOf(block);
            }
        }

        block = "";
        nextOp = false;
        for (int i = 0; i < sentence[1].length(); i++) {
            if (sentence[1].charAt(i) == '+' || sentence[1].charAt(i) == '-' && block.length() > 0) {
                if (block.charAt(block.length() - 1) == 'x') {
                    if (nextOp) {
                        if (block.length() == 1) {
                            x_count++;
                        } else {
                            x_count = x_count + Integer.valueOf(block.substring(0, block.length() - 1));
                        }
                    } else {
                        if (block.length() == 1) {
                            x_count--;
                        } else {
                            x_count = x_count - Integer.valueOf(block.substring(0, block.length() - 1));
                        }
                    }
                } else {
                    if (nextOp) {
                        sum = sum + Integer.valueOf(block);
                    } else {
                        sum = sum - Integer.valueOf(block);
                    }
                }
                block = "";
            }
            if (sentence[1].charAt(i) == '+') {
                nextOp = false;
                continue;
            }
            if (sentence[1].charAt(i) == '-') {
                nextOp = true;
                continue;
            }
            block = block + sentence[1].charAt(i);
        }
        if (block.charAt(block.length() - 1) == 'x') {
            if (nextOp) {
                if (block.length() == 1) {
                    x_count++;
                } else {
                    x_count = x_count + Integer.valueOf(block.substring(0, block.length() - 1));
                }
            } else {
                if (block.length() == 1) {
                    x_count--;
                } else {
                    x_count = x_count - Integer.valueOf(block.substring(0, block.length() - 1));
                }
            }
        } else {
            if (nextOp) {
                sum = sum + Integer.valueOf(block);
            } else {
                sum = sum - Integer.valueOf(block);
            }
        }

        if (x_count != 0) {
            return "x=" + -(sum / x_count);
        } else if (sum == 0) {
            return "Infinite solutions";
        } else {
            return "No solution";
        }
    }
}
```

It is ugly but it works... So, I don't want to improve it.

It gets AC.
