---
title: Next Greater Element III
date: 2017-04-10 00:11:47
tags:
    - String
---

> Given a positive 32-bit integer n, you need to find the smallest 32-bit integer which has exactly the same digits existing in the integer n and is greater in value than n. If no such positive 32-bit integer exists, you need to return -1.
>
> Example 1:
> ```
Input: 12
Output: 21
```
> Example 2:
> ```
Input: 21
Output: -1
```

<!--more-->

This is Leetcode No.556. It is a middle problem. At first I think about to mark every number in the num and try to list all the combinations.

Then sort its result and find the result. It's time complex is huge. And I think it must be TLE. So, I don't use the method.

Then, I think about another solution that, try to swap two number to make the number larger than the original.

For instance, '123456' => '123465', that mean we just need to swap the last two number to make the number larger than the original.

So, what if we just swap the last two number which meet the need that num[idx] > num[idx - 1].

Here is my code coming:

```
using namespace std;

class Solution {
    public:
        int nextGreaterElement(int n) {
            string res = "";
            while (n > 0) {
                res = (char)('0' + n % 10) + res;
                n = n / 10;
            }

            bool flag = false;
            for (int i = res.length() - 1; i > 0 ; i--) {
                if (res[i] > res[i - 1]) {
                    flag = true;
                    char tmp = res[i - 1];
                    res[i - 1] = res[i];
                    res[i] = tmp;
                    break;
                }
            }

            int num = 0;
            for (int i = 0; i < (int)res.length(); i++) {
                num = (res[i] - '0') + num * 10;
            }
            return flag ? num : -1;
        }
};
```

However, I meet that 12443322 case. My code return 14243322 which is wrong. So, the new solution is as following.

+ mark the first number location which numStr[idx] < numStr[idx + 1]
+ reverse the string
+ swap the location with the first larger number

```
using namespace std;

class Solution {
    public:
        int nextGreaterElement(int num) {
            string numStr = to_string(num);
            int idx = numStr.length() - 2;
            for (; idx >= 0 && numStr[idx] >= numStr[idx + 1]; idx--) {}
            if (idx == -1) {
                return -1;
            }

            reverse(numStr.begin() + idx + 1, numStr.end());
            for (int i = idx + 1; i < (int)numStr.size(); i++) {
                if (numStr[idx] < numStr[i]) {
                    swap(numStr[idx], numStr[i]);
                    break;
                }
            }

            long long res = stol(numStr);

            return res > INT_MAX || res == num ? -1 : res;
        }
};
```

BTW: we should use the **stol** function instead of **ctoi** due to that the given number may be larger than the INT_MAX.

It gets AC.
