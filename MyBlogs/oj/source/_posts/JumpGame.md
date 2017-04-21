---
title: Jump Game
date: 2017-04-20 20:52:23
tags:
    - Greedy
    - Array
---

> Given an array of non-negative integers, you are initially positioned at the first index of the array.

> Each element in the array represents your maximum jump length at that position.
>
> Determine if you are able to reach the last index.
>
> For example:
>```
A = [2,3,1,1,4], return true.
A = [3,2,1,0,4], return false.
```

<!--more-->

This is Leetcode No.55. It is a old problem, But it is still a classic one in Greedy.

If we don't use Greedy method, we can quickly find the solution like below:

```
using namespace std;

class Solution {
    public:
        bool canJump(vector<int>& nums) {
            return _jump(0, nums);
        }

        bool _jump(int current, vector<int> nums) {
            if (current + nums[current] >= (int)nums.size() - 1) return true;

            bool res = false;
            for (int idx = current + 1; idx <= current + nums[current]; idx++) {
                res = res || _jump(idx, nums);
            }
            return res;
        }
};
```

Easy to think, while it takes a long time to figure out the result.

So, we should use a little DP thought. You just need to make sure that your max reach idx is larger than the nums.size() - 1

```
using namespace std;

class Solution {
    public:
        bool canJump(vector<int>& nums) {
            int reach = 0;
            for (int i = 0; i < min((int)nums.size(), reach + 1); i++) {
                reach = max(reach, nums[i] + i);
            }
            return reach >= (int)nums.size() - 1;
        }
}
```

The solution is simple and clean, but the process of thinking has much fun.

Last it gets AC.


