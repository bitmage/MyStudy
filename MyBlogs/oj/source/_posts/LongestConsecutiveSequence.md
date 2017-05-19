---
title: Longest Consecutive Sequence
date: 2017-05-19 13:06:08
tags:
    - Array
    - Union Find
---

> Given an unsorted array of integers, find the length of the longest consecutive elements sequence.
>
> **For example:**
```
Given [100, 4, 200, 1, 3, 2],
The longest consecutive elements sequence is [1, 2, 3, 4]. Return its length: 4.
```
> Your algorithm should run in O(n) complexity.

<!--more-->

This is Leetcode No.128. You can solve this problem with sorting:

```
using namespace std;

class Solution {
    public:
        int longestConsecutive(vector<int>& nums) {
            int res = nums.size() == 0 ? 0 : 1;
            sort(nums.begin(), nums.end());

            int ordered_num = 1;
            for (int i = 0; i < (int)nums.size() - 1; i++) {
                if (nums[i] + 1 == nums[i + 1]) {
                    ordered_num++;
                    res = max(res, ordered_num);
                } else if (nums[i] == nums[i + 1]) {
                    continue;
                } else {
                    ordered_num = 1;
                }
            }
            return res;
        }
};
```

But its time complexity is O(nlogn) which is not meet the requirement. So, though we get AC, we still need to find a better solution to solve this problem.

We can use the DP method to swap time and space. We can use a DP map to store the num and its total num of the consecurity sequence.

```
using namespace std;

class Solution {
    public:
        int longestConsecutive(vector<int>& nums) {
            unordered_map<int, int> NUMS;
            int res = nums.size() == 0 ? 0 : 1;

            for (int i = 0; i < (int)nums.size(); i++) {
                NUMS.insert(pair<int, int>(nums[i], 1));
            }

            for (int i = 0; i < (int)nums.size(); i++) {
                if (NUMS.find(nums[i])->second != 1) {
                    continue;
                }
                int currentNum = nums[i], currentOrder = 1;
                while (NUMS.find(currentNum + 1) != NUMS.end()) {
                    currentOrder++;
                    NUMS.find(currentNum + 1)->second = currentOrder;
                    currentNum++;
                    res = max(res, NUMS.find(currentNum)->second);
                }
                currentNum = nums[i];
                while (NUMS.find(currentNum - 1) != NUMS.end()) {
                    currentOrder++;
                    NUMS.find(currentNum - 1)->second = currentOrder;
                    currentNum--;
                    res = max(res, NUMS.find(currentNum)->second);
                }
            }

            return res;
        }
};
```

In some case, the time complexity of this algorithm should be O(n), however, we get more time than the sorting solution. May be the space cost more time than what I think.

But, it is really a O(n) solution... Then I find that if I use the set instead of the map, we can save time for the space mallocing.

```
class Solution {
    public:
        int longestConsecutive(vector<int> &num) {
            unordered_set<int> record(num.begin(),num.end());
            int res = num.size() == 0 ? 0 : 1;
            for(int n : num){
                if(record.find(n)==record.end()) continue;
                record.erase(n);
                int prev = n-1,next = n+1;
                while(record.find(prev)!=record.end()) record.erase(prev--);
                while(record.find(next)!=record.end()) record.erase(next++);
                res = max(res,next-prev-1);
            }
            return res;
        }
};
```

So, the above is the final answer, it costs 9ms.

