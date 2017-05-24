---
title: Sliding Window Maximum
date: 2017-05-24 13:48:48
tags:
    - Heap
---


> Given an array nums, there is a sliding window of size k which is moving from the very left of the array to the very right. You can only see the k numbers in the window. Each time the sliding window moves right by one position.
>
> **For example:**
```
Given nums = [1,3,-1,-3,5,3,6,7], and k = 3.

Window position                Max
---------------               -----
[1  3  -1] -3  5  3  6  7       3
 1 [3  -1  -3] 5  3  6  7       3
 1  3 [-1  -3  5] 3  6  7       5
 1  3  -1 [-3  5  3] 6  7       5
 1  3  -1  -3 [5  3  6] 7       6
 1  3  -1  -3  5 [3  6  7]      7
Therefore, return the max sliding window as [3,3,5,5,6,7].
```
> **Note:**
> You may assume k is always valid, ie: 1 ≤ k ≤ input array's size for non-empty array.
>
> **Follow up:**
> Could you solve it in linear time?
<!--more-->

This is Leetcode No.239. After reading this problem description, you can quickly write the solution about the heap.

```
using namespace std;

class Solution {
    public:
        vector<int> maxSlidingWindow(vector<int>& nums, int k) {
            vector<int> res;

            if (nums.size() == 0) {
                return res;
            }

            int startIdx = 0, endIdx = k;
            vector<int> heap;

            for (int i = startIdx; i < endIdx; i++) {
                heap.push_back(nums[i]);
            }
            std::make_heap(heap.begin(), heap.end());
            res.push_back(heap[0]);
            while (endIdx < (int)nums.size()) {
                for (int i = 0; i < (int)heap.size(); i++) {
                    if (heap[i] == nums[startIdx]) {
                        heap[i] = nums[endIdx];
                        break;
                    }
                }
                std::make_heap(heap.begin(), heap.end());
                res.push_back(heap[0]);
                startIdx++;
                endIdx++;
            }
            return res;
        }
};
```

It is simple to write and think. However, its time complexity is too large. As the follow up question that can you solve this problem in a linear time cost?

It really costs me a lot of time to figure it out. The most important thing is too reduce the time of comparation. How about remove the num in the array when it smaller than the new one?

Then I use the stack to store the DP num from idx to idx + k and remove the unnecessary numbers.

```
using namespace std;

class Solution {
    public:
        vector<int> maxSlidingWindow(vector<int>& nums, int k) {
            vector<int> res;

            if (nums.size() == 0) {
                return res;
            }

            list<pair<int, int> > DP;
            int startIdx = 0, endIdx = k - 1;
            for (int i = startIdx; i < endIdx; i++) {
                DP.push_back(pair<int, int>(nums[i], i));
            }

            while (endIdx < (int)nums.size()) {
                DP.push_back(pair<int, int>(nums[endIdx], endIdx));
                while (DP.front().first < nums[endIdx]) {
                    DP.pop_front();
                }
                int maxSoFar = DP.front().first;
                for (auto i : DP) {
                    maxSoFar = max(i.first, maxSoFar);
                }
                res.push_back(maxSoFar);
                if (DP.front().second == startIdx) {
                    DP.pop_front();
                }

                startIdx++;
                endIdx++;
            }

            return res;
        }
};
```

It becomes faster but only still beats 5% solutions. So, I have to figure out another solution...

Here is the final solution:

```
class Solution {
    public:
        vector<int> maxSlidingWindow(vector<int>& nums, int k) {
            deque<int> buffer;
            vector<int> res;

            for(auto i=0; i<nums.size(); ++i) {
                while(!buffer.empty() && nums[i]>=nums[buffer.back()]) buffer.pop_back();
                buffer.push_back(i);

                if(i>=k-1) res.push_back(nums[buffer.front()]);
                if(buffer.front()<= i-k + 1) buffer.pop_front();
            }
            return res;
        }
};
```

It beats 60% solutions.
