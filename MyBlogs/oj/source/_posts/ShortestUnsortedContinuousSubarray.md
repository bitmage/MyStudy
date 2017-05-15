---
title: Shortest Unsorted Continuous Subarray
date: 2017-05-14 14:22:15
tags:
    - Array
---


> Given an integer array, you need to find one continuous subarray that if you only sort this subarray in ascending order, then the whole array will be sorted in ascending order, too.
>
> You need to find the shortest such subarray and output its length.
>
> **Example 1:**
```
Input: [2, 6, 4, 8, 10, 9, 15]
Output: 5
Explanation: You need to sort [6, 4, 8, 10, 9] in ascending
order to make the whole array sorted in ascending order.
```
> **Note:**
>
> + Then length of the input array is in range [1, 10,000].
> + The input array may contain duplicates, so ascending order here means <=.

<!--more-->

This is Leetcode No.581, and it is also a problem of Leetcode Weekly Contest. But it is a simple one but when I joined the contest I failed five times on this problem(WTF).

So, here I write the blog to remind me to look deeply into the problem before writing the code.

At first, I write the code in a Brute Force way but it is a wrong thought.

For example, I try to find every pair that meets 'num[i] > num[i+1]' and find the min [i] and the max [i+1].

However it is wrong. Then I use a sorting method. The time complex is O(nlogn), the space cost is O(n). But it passes the tests.

```
using namespace std;

class Solution {
    public:
        int findUnsortedSubarray(vector<int>& nums) {
            int res = 0;
            vector<int> tmp = nums, idxs;
            sort(nums.begin(), nums.end());
            for (int i = 0; i < (int)nums.size(); i++) {
                if (tmp[i] != nums[i]) {
                    idxs.push_back(i);
                }
            }

            if (idxs.size() > 0) {
                res = idxs[idxs.size() - 1] - idxs[0];
            }
            return res;
        }
};
```

It gets AC. But when I read the Editorial Solution, I find a solution without extra space cost.


> The idea behind this method is that the correct position of the minimum element in the unsorted subarray helps to determine the required left boundary. Similarly, the correct position of the maximum element in the unsorted subarray helps to determine the required right boundary.
>
> Thus, firstly we need to determine when the correctly sorted array goes wrong. We keep a track of this by observing rising slope starting from the beginning of the array. Whenever the slope falls, we know that the unsorted array has surely started. Thus, now we determine the minimum element found till the end of the array numsnumsnums, given by minminmin.
>
> Similarly, we scan the array numsnumsnums in the reverse order and when the slope becomes rising instead of falling, we start looking for the maximum element till we reach the beginning of the array, given by maxmaxmax.
>
> Then, we traverse over numsnumsnums and determine the correct position of minminmin and maxmaxmax by comparing these elements with the other array elements. e.g. To determine the correct position of minminmin, we know the initial portion of numsnumsnums is already sorted. Thus, we need to find the first element which is just larger than minminmin. Similarly, for maxmaxmax's position, we need to find the first element which is just smaller than maxmaxmax searching in numsnumsnums backwards.
>
> We can take this figure for reference again:
>
> ![Java](https://leetcode.com/articles/Figures/581_Unsorted_subarray_2.PNG)
>
> We can observe that the point bbb needs to lie just after index 0 marking the left boundary and the point aaa needs to lie just before index 7 marking the right boundary of the unsorted subarray.
```
public class Solution {
    public int findUnsortedSubarray(int[] nums) {
        int min = Integer.MAX_VALUE, max = Integer.MIN_VALUE;
        boolean flag = false;
        for (int i = 1; i < nums.length; i++) {
            if (nums[i] < nums[i - 1])
                flag = true;
            if (flag)
                min = Math.min(min, nums[i]);
        }
        flag = false;
        for (int i = nums.length - 2; i >= 0; i--) {
            if (nums[i] > nums[i + 1])
                flag = true;
            if (flag)
                max = Math.max(max, nums[i]);
        }
        int l, r;
        for (l = 0; l < nums.length; l++) {
            if (min < nums[l])
                break;
        }
        for (r = nums.length - 1; r >= 0; r--) {
            if (max > nums[r])
                break;
        }
        return r - l < 0 ? 0 : r - l + 1;
    }
}
```
