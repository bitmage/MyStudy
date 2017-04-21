---
title: Optimal Division
date: 2017-04-16 11:02:32
tags:
    - Math
---

> Given a list of positive integers, the adjacent integers will perform the float division. For example, [2,3,4] -> 2 / 3 / 4.
>
> However, you can add any number of parenthesis at any position to change the priority of operations. You should find out how to add parenthesis to get the maximum result, and return the corresponding expression in string format. Your expression should NOT contain redundant parenthesis.
>
> Example:
```
Input: [1000,100,10,2]
Output: "1000/(100/10/2)"
Explanation:
    1000/(100/10/2) = 1000/((100/10)/2) = 200
    However, the bold parenthesis in "1000/((100/10)/2)" are redundant,
    since they don't influence the operation priority. So you should return "1000/(100/10/2)".

Other cases:
1000/(100/10)/2 = 50
1000/(100/(10/2)) = 50
1000/100/10/2 = 0.5
1000/100/(10/2) = 2
```
<!--more-->
> Note:
>
> + The length of the input array is [1, 10].
> + Elements in the given array will be in range [2, 1000].
> + There is only one optimal division for each test case.

This is one problem of Leetcode weekly constest 28. And it is also No.553. It is a Math problem.

At first, I thought I should generate all the possible combination of the division expression.

But I find that if you change the operator from '/' to '*', you can calculate the result without the parentesis.

For example:  1000 / (100 / 10) = 100 / 100 * 10

Then, you can quickly find the max result. It always be num[0] / num[1] * num[2] * num[3] ...

So, the expression will only be num[0] / ( num[1] / num[2] / num[3] ... )

Then here comes the result:

```
using namespace std;

class Solution {
    public:
        string optimalDivision(vector<int>& nums) {
            string res = "";
            if (nums.size() == 0) {
                return res;
            }
            if (nums.size() == 1) {
                return to_string(nums[0]);
            }
            if (nums.size() == 2) {
                return to_string(nums[0]) + '/' + to_string(nums[1]);
            }
            for (int idx = 0; idx < (int)nums.size(); idx++) {
                if (idx == 0) {
                    res = res + to_string(nums[0]) + '/' + '(';
                } else if (idx == (int)nums.size() - 1){
                    res = res + to_string(nums[idx]) + ')';
                } else {
                    res = res + to_string(nums[idx]) + '/';
                }
            }
            return res;
        }
};
```

It gets AC.
