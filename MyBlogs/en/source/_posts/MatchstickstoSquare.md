---
title: Matchsticks to Square
date: 2017-02-04 13:50:52
tags:
    - Depth-first Search
---

> Remember the story of Little Match Girl? By now, you know exactly what matchsticks the little match girl has, please find out a way you can make one square by using up all those matchsticks. You should not break any stick, but you can link them up, and each matchstick must be used exactly one time.
>
> Your input will be several matchsticks the girl has, represented with their stick length. Your output will either be true or false, to represent whether you could make one square using all the matchsticks the little match girl has.
>
> Example 1:
>
> + Input: [1,1,2,2,2]
> + Output: true
> + Explanation: You can form a square with length 2, one side of the square came two sticks with length 1.
>
> Example 2:
>
> + Input: [3,3,3,3,4]
> + Output: false
> + Explanation: You cannot find a way to form a square with all the matchsticks.
>
> Note:
> + The length sum of the given matchsticks is in the range of 0 to 10^9.
> + The length of the given matchstick array will not exceed 15.

<!--more-->

This is Leetcode 473. It is an interesting problem. You can quickly find the condition which never make a square. When the total length can't be divided by 4. If it can be divided by 4, you also make sure the sticks can be reformed to that length.

So, the problem becomes to find that if the array can be reformed by four (total length)/4.

Maybe we can use the two pointer function here to find the suitable solution, use a visited array to mark every stick we used, it may use O(NlogN + 4N) time. As following:

```
bool _calcLength(vector<int>& nums, int target, int currentNum) {
    if (currentNum == 3) {
        return true;
    } else {
        int startIdx = 0, endIdx = 0, currentSum = 0;
        while (visited[startIdx] == 1) {
            startIdx++;
        }

        endIdx = startIdx, currentSum = nums[startIdx];
        visited[startIdx] = 1;
        while (endIdx < (int)nums.size() && startIdx <= endIdx) {
            if (visited[endIdx] == 1) {
                endIdx++;
                continue;
            }
            if (visited[startIdx] == 1) {
                startIdx++;
                continue;
            }

            if (currentSum > target) {
                currentSum = currentSum - nums[startIdx];
                visited[startIdx] = 0;
                startIdx++;
            } else if (currentSum == target) {
                return _calcLength(nums, target, currentNum + 1);
            } else {
                currentSum = currentSum + nums[endIdx];
                visited[endIdx] = 1;
                endIdx++;
            }
        }
        return false;
    }
}
```

But I failed, because when the case is [3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5], I have to find the 12, so I find [3, 3, 3, 3], and it will make the next failed.

So, it must be some other solution. Then I find a blur force solution.

```
class Solution {
    public:
        bool makesquare(vector<int>& nums) {
            if (nums.size() < 4) {
                return false;
            }

            long long totalLength = 0;
            for (int i = 0; i < (int)nums.size(); i++) {
                totalLength = totalLength + nums[i];
            }

            int sums[4];
            memset(sums, 0, sizeof(sums));

            if (totalLength % 4 != 0) {
                return false;
            } else {
                return _calcLength(nums, sums, 0, totalLength/4);
            }
        }

        bool _calcLength(vector<int>& nums, int sums[], int idx, int target) {
            if (idx == (int)nums.size()) {
                if (sums[0] == target && sums[1] == target && sums[2] == target) {
                    return true;
                } else {
                    return false;
                }
            }

            for (int i = 0; i < 4; i++) {
                if (sums[i] + nums[idx] > target) {
                    continue;
                }
                sums[i] = sums[i] + nums[idx];
                if (_calcLength(nums, sums, idx + 1, target)) {
                    return true;
                }
                sums[i] = sums[i] - nums[idx];
            }
            return false;
        }
};
```

It simply gets AC.
