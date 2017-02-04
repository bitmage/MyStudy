---
title: Partition Equal Subset Sum
date: 2017-01-06 13:46:25
tags:
    - Dynamic Programming
---

> Given a non-empty array containing only positive integers, find if the array can be partitioned into two subsets such that the sum of elements in both subsets is equal.
>
> Note:
>
> + Each of the array element will not exceed 100.
> + The array size will not exceed 200.
>
> Example 1:
>
> Input: [1, 5, 11, 5]
> Output: true
>
> Explanation: The array can be partitioned as [1, 5, 5] and [11].
>
> Example 2:
>
> Input: [1, 2, 3, 5]
> Output: false
>
> Explanation: The array cannot be partitioned into equal sum subsets.

<!-- more -->

This is Leetcode 416, and it is a leetweek problem. My last pass code like these:
```
class Solution {
    public:
        bool canPartition(vector<int>& nums) {
            if (nums.size() < 2) {
                return false;
            }
            int sum = 0;
            for (int i = 0; i < (int)nums.size(); i++) {
                sum = sum + nums[i];
            }
            if (sum % 2 != 0) {
                return false;
            }
            return check(0, 0, nums, sum);
        }

        bool check(int start, int current, vector<int> nums, int sum) {
            bool res = false;
            if (current > sum / 2) {
                return false;
            }
            if (current == sum / 2) {
                return true;
            }
            for (int i = start + 1; i < (int)nums.size(); i++) {
                res = res || check(i, current + nums[i], nums, sum);
            }
            return res;
        }
};
```
Because the time complex of this recursive functoin is O(n!), the worst condition. So, we can change our mind to turn this problem into another one.

Find a set of the subarray which its sum is sum / 2. And we can use the DP solution.

Because we know the sum of the array, so we make a array **dp** in size sum/2. And after a for loop. we will know the dp[num] and dp[sum/2 - num] can achieve. So, when we for twice, like:
```
for (auto num : nums) {
    for(int i = target; i >= num; i--) { // to be quick we don't visit the whole dp array
        dp[i] = dp[i] || dp[i - num];
    }
}
```

So, here comes a better solution based on DP:

```
using namespace std;
class Solution {
    public:
        bool canPartition(vector<int>& nums) {
            int sum = accumulate(nums.begin(), nums.end(), 0);
            if (sum & 1) return false;
            int half = sum >> 1;

            vector<bool> accessibility(half + 1, false);
            accessibility[0] = true;    // '0' is always reachable
            //For all num in nums, check the accessibility from half - num to 0.
            //If 'i' is accessible by former numbers, then 'i + num' is also accessible. (DP Algorithm)
            for(int num: nums)
                //Below here we must start from 'half' downto 'num', otherwise current 'num' might be multiply used.
                //e.g.: If num == 2, then we will have 2, 4, 6... will all be accessible and lead to wrong answer.
                for(int i = half; i >= num; i--){
                    if (accessibility[i - num] == true){
                        accessibility[i] = true;
                    }
                }
            return accessibility[half];
        }
};
```

However it's space complex is O(n), so if you need a O(1) solution, I find a cool solution based on bitset.

```
bool canPartition(vector<int>& nums) {
    bitset<5001> bits(1);
    int sum = accumulate(nums.begin(), nums.end(), 0);
    for (auto n : nums) bits |= bits << n;
    return !(sum & 1) && bits[sum >> 1];
}
```
Why and how it works, remaining unknown.
