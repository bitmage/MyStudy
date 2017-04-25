---
title: Remove K Digits
date: 2017-04-25 13:33:37
tags:
    - Stack
    - Greedy
---

> Given a non-negative integer num represented as a string, remove k digits from the number so that the new number is the smallest possible.
> 
> Note:
> The length of num is less than 10002 and will be ≥ k.
> The given num does not contain any leading zero.
> 
> Example 1:
>```
Input: num = "1432219", k = 3
Output: "1219"
Explanation: Remove the three digits 4, 3, and 2 to form the new number 1219 which is the smallest.
```
> Example 2:
>```
Input: num = "10200", k = 1
Output: "200"
Explanation: Remove the leading 1 and the number is 200. Note that the output must not contain leading zeroes.
```
> Example 3:
>```
Input: num = "10", k = 2
Output: "0"
Explanation: Remove all the digits from the number and it is left with nothing which is 0.
```

<!--more-->

This is Leetcode No.402. I think it is a Math problem. But you can think in a DP way.

For example, what will you do when you should remove one number from '13412' to make the result least.

You will remove '4', why do you choose '4'? Because you should remove the first largest number to make sure that the result least. Then you can find the solution. Remove K largest number from the number.

For instance, if you should remove two numbers from the '13412', the first number you remove is '4', then the second is '3' - '112'.

So, the solution comes:

```
using namespace std;

class Solution {
    private:
        std::vector<char> str2vector(string num) {
            std::vector<char> res;
            for (int i = 0; i < (int)num.length(); i++) {
                res.push_back(num[i]);
            }
            return res;
        }

        string vector2str(vector<char> nums) {
            int startIdx = 0;
            for (int i = 0; i < (int)nums.size() && nums[i] == '0'; i++) {
                startIdx++;
            }
            stringstream res;
            for (int i = startIdx; i < (int)nums.size(); i++) {
                res << nums[i];
            }
            return res.str() == "" ? "0" : res.str();
        }

    public:
        string removeKdigits(string num, int k) {
            if (k == 0) {
                return num;
            }
            std::vector<char> nums;
            nums = str2vector(num);

            do  {
                int i = 0;
                for (; i < (int)nums.size() - 1; i++) {
                    if (nums[i] > nums[i + 1]) {
                        break;
                    }
                }
                nums.erase(nums.begin() + i);
                k--;
            } while (k > 0);
            return nums.size() == 0 ? "0" : vector2str(nums);
        }
};
```

It gets AC.
