---
title: Predict the Winner
date: 2017-02-03 19:48:26
tags:
    - Dynamic Programming
    - Minimax
---

> Given an array of scores that are non-negative integers. Player 1 picks one of the numbers from either end of the array followed by the player 2 and then player 1 and so on. Each time a player picks a number, that number will not be available for the next player. This continues until all the scores have been chosen. The player with the maximum score wins.
>
> Given an array of scores, predict whether player 1 is the winner. You can assume each player plays to maximize his score.
>
> Example 1:
> + Input: [1, 5, 2]
> + Output: False
> + Explanation:
>   + Initially, player 1 can choose between 1 and 2.
>   + If he chooses 2 (or 1). Then player 2 can choose from 1 (or 2) and 5. If player 2 chooses 5.
>   + Then player 1 will be left with 1 (or 2). So, final score of player 1 is 1 + 2 = 3, and player 2 is 5.
>   + Hence, player 1 will never be the winner and you need to return False.
>
> Example 2:
> + Input: [1, 5, 233, 7]
> + Output: True
> + Explanation:
>   + Player 1 first chooses 1. Then player 2 have to choose between 5 and 7.
>   + No matter which number player 2 choose, player 1 can choose 233.
>   + Finally, player 1 has more score (234) than player 2 (12).
>   + So you need to return True representing player1 can win.
>
> Note:
> + 1 <= length of the array <= 20.
> + Any scores in the given array are non-negative integers and will not exceed 10,000,000.
> + If the scores of both players are equal, then player 1 is still the winner.

<!--more-->

This is Leetcode 486, and its No. is like the comic("[Re:ゼロから始める異世界生活](http://www.imdb.com/title/tt5607616/)") male role called "Subaru Natsuki".

It is actually an interesting problem. You can find its solution is like "Tower of Hanoi", you need to find the conditions needed by player 1 to win.

So, here is his conditions, if his turn, he just need one choice to win, for the other's turn, he need both choice to win.

Here is the condition section of code:

```
bool _calc(int startIdx, int endIdx, bool isA, int currentA, int currentB, vector<int> nums) {
    if (endIdx == startIdx) {
        if (isA) {
            return currentA + nums[startIdx] >= currentB;
        } else {
            return currentA >= currentB + nums[startIdx];
        }
    } else {
        if (isA) {
            return _calc(startIdx + 1, endIdx, !isA, currentA + nums[startIdx], currentB, nums)
                || _calc(startIdx, endIdx - 1, !isA, currentA + nums[endIdx], currentB, nums);
        } else {
            return _calc(startIdx + 1, endIdx, !isA, currentA, currentB + nums[startIdx], nums)
                && _calc(startIdx, endIdx - 1, !isA, currentA, currentB + nums[endIdx], nums);
        }
    }
}
```

And my solution is:

```
class Solution {
    public:
        bool PredictTheWinner(vector<int>& nums) {
            return _calc(0, nums.size() - 1, true, 0, 0, nums);
        }

        bool _calc(int startIdx, int endIdx, bool isA, int currentA, int currentB, vector<int> nums) {
            if (endIdx == startIdx) {
                if (isA) {
                    return currentA + nums[startIdx] >= currentB;
                } else {
                    return currentA >= currentB + nums[startIdx];
                }
            } else {
                if (isA) {
                    return _calc(startIdx + 1, endIdx, !isA, currentA + nums[startIdx], currentB, nums)
                        || _calc(startIdx, endIdx - 1, !isA, currentA + nums[endIdx], currentB, nums);
                } else {
                    return _calc(startIdx + 1, endIdx, !isA, currentA, currentB + nums[startIdx], nums)
                        && _calc(startIdx, endIdx - 1, !isA, currentA, currentB + nums[endIdx], nums);
                }
            }
        }
};
```

It gets AC.
