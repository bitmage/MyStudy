---
title: Relative Ranks
date: 2017-02-05 14:23:59
tags:
    - Array
---


> Given scores of N athletes, find their relative ranks and the men with the top three highest scores, who will be awarded medals: "Gold Medal", "Silver Medal" and "Bronze Medal".
>
> Example 1:
>
> + Input: [5, 4, 3, 2, 1]
> + Output: ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]
> + Explanation:
>     + The first three athletes got the top three highest scores, so they got "Gold Medal", "Silver Medal" and "Bronze Medal".
>     + For the left two athletes, you just need to output their relative ranks according to their scores.
>
> Note:
> + N is a positive integer and won't exceed 10,000.
> + All the scores of athletes are guaranteed to be unique.

<!--more-->

This is Leetcode 506, and it is one of this week's weekly contest.

Easy one.

```
bool msort( const int &v1, const int &v2) {
    return v1 > v2;
}
class Solution {
    public:
        vector<string> findRelativeRanks(vector<int>& nums) {
            vector<string> res;
            vector<int> origin(nums);
            map<int, string> rankmap;

            string ranks[3] = {"Gold Medal", "Silver Medal", "Bronze Medal"};

            sort(nums.begin(), nums.end(), msort);

            for (int i = 0; i < (int)nums.size(); i++) {
                if (i < 3) {
                    rankmap.insert(pair<int, string>(nums[i], ranks[i]));
                } else {
                    ostringstream stm;
                    stm << i + 1;
                    rankmap.insert(pair<int, string>(nums[i], stm.str()));
                }
            }

            for (int i = 0; i < (int)origin.size(); i++) {
                res.push_back(rankmap.find(origin[i])->second);
            }
            return res;
        }
};
```

It gets AC.
