---
title: Heaters
date: 2017-01-04 13:46:25
tags:
    - Binary Search
---

> Now, you are given positions of houses and heaters on a horizontal line, find out minimum radius of heaters so that all houses could be covered by those heaters.
>
> So, your input will be the positions of houses and heaters seperately, and your expected output will be the minimum radius standard of heaters.
>
> Note:
>
> + Numbers of houses and heaters you are given are non-negative and will not exceed 25000.
> + Positions of houses and heaters you are given are non-negative and will not exceed 10^9.
> + As long as a house is in the heaters' warm radius range, it can be warmed.
> + All the heaters follow your radius standard and the warm radius will the same.
>
> Example 1:
>
> Input: [1,2,3],[2]
> Output: 1
> Explanation: The only heater was placed in the position 2, and if we use the radius 1 standard, then all the houses can be warmed.
>
> Example 2:
>
> Input: [1,2,3,4],[1,4]
> Output: 1
> Explanation: The two heater was placed in the position 1 and 4. We need to use radius 1 standard, then all the houses can be warmed.

<!-- more -->

This is Leetcode 475. As it's descripted, we can quickly find a solution. Picture this:


```
          h1   h2        h3
           |    |         |
......................................
```

If we find the min value of the radius between every two heaters, and find the max one, which will be the result.

And it's time complex is O(n*m), n is the num of the houses and m is the num of heaters.

```
using namespace std;

class Solution {
public:
    int idx;
    int findRadius(vector<int>& houses, vector<int>& heaters) {
        sort(houses.begin(), houses.end());
        sort(heaters.begin(), heaters.end());

        int res = INT_MIN;
        idx = 0;
        for (int i = 0; i < (int)heaters.size(); i++) {
            if (i == 0) {
                res = max(res, findMinRadius(houses, -1, heaters[i]));
            } else if (i == (int)heaters.size()) {
                res = max(res, findMinRadius(houses, heaters[i - 1], -1));
            } else {
                res = max(res, findMinRadius(houses, heaters[i - 1], heaters[i]));
            }
            std::cout << res << std::endl;
        }
        return res;
    }

    int findMinRadius(vector<int> houses, int heater1, int heater2) {
        if (heater1 == -1) { // means the first one
            while (houses[idx] <= heater2) { idx++; }
            return heater2 - houses[0];
        } else if (heater2 == -1) { // means the last one
            while (idx < (int)houses.size()) { idx++; }
            return houses[idx - 1] - heater1;
        } else {
            int minRadius = INT_MAX;
            for (int i = idx; houses[i] < heater2; i++) {
                // minRadius = min(max(houses[i] - heater1, heater2 - houses[i]), minRadius);
                // if there are (2n-1) houses, we need to use the mid one
                // if there are (2n) houses, we should use the the mid two
                // here is hard to decide which to use as the standard
            }
            return minRadius;
        }
    }
};
```

However, there is a better way to figure this problem out. The idea is to leverage decent binarySearch function.

+ For each house, find its position between those heaters (thus we need the heaters array to be sorted).
+ Calculate the distances between this house and left heater and right heater, get a MIN value of those two values. Corner cases are there is no left or right heater.
+ Get MAX value among distances in step 2. It's the answer.

So, here comes the solution:

```
class Solution {
    public:
        int findRadius(vector<int>& houses, vector<int>& heaters) {
            int house_size = houses.size();
            if (house_size == 0) return 0;
            sort(heaters.begin(), heaters.end());

            int res = 0;
            for (auto& c : houses) {

                int idx = Bsearch(heaters, c);

                if (idx == 0) {
                    res = max(res, heaters[idx] - c);
                } else if (idx >= (int)heaters.size()) {
                    res = max(res, c - heaters.back());
                } else {
                    res = max(res, min(heaters[idx] - c, c - heaters[idx - 1]));
                }
            }
            return res;
        }

        int Bsearch(vector<int>& nums, int val) {

            int l = 0, r = nums.size() - 1;
            while (l <= r) {
                int mid = l + ((r - l) >> 1);
                if (nums[mid] == val)
                    return mid;
                else if (nums[mid] < val)
                    l = mid + 1;
                else
                    r = mid - 1;
            }
            return l;
        }
};
```

And it's AC.
