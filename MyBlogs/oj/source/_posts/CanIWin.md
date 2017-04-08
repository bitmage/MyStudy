---
title: Can I Win
date: 2017-03-13 16:28:42
tags:
    - Minimax
    - Dynamic Programming
---


> In the "100 game," two players take turns adding, to a running total, any integer from 1..10. The player who first causes the running total to reach or exceed 100 wins.
>
> What if we change the game so that players cannot re-use integers?
>
> For example, two players might take turns drawing from a common pool of numbers of 1..15 without replacement until they reach a total >= 100.
>
> Given an integer maxChoosableInteger and another integer desiredTotal, determine if the first player to move can force a win, assuming both players play optimally.
>
> You can always assume that maxChoosableInteger will not be larger than 20 and desiredTotal will not be larger than 300.
>
> Example:
> ```
Input:
    maxChoosableInteger = 10
    desiredTotal = 11

Output:
    false

Explanation:
    No matter which integer the first player choose, the first player will lose.
    The first player can choose an integer from 1 up to 10.
    If the first player choose 1, the second player can only choose integers from 2 up to 10.
    The second player will win by choosing 10 and get a total = 11, which is >= desiredTotal.
    Same with other integers chosen by the first player, the second player will always win.
```

<!--more-->

This is Leetcode No.464. At the beginning, I just want to show its all possible combination. The code is like following:

```
using namespace std;

class Solution {
    public:
        bool canIWin(int maxChoosableInteger, int desiredTotal) {
            if (desiredTotal < 1) {
                return true;
            }
            set<int> nums;
            for (int i = 1; i <= maxChoosableInteger; i++) {
                nums.insert(i);
            }

            return _check(nums, false, 0, desiredTotal);
        }

        bool _check(set<int> &nums, int isFirst, int current, int target) {
            if (current >= target) {
                return isFirst;
            }

            bool res;
            if (isFirst) {
                res = false;

                for (auto i : nums) {
                    set<int> t_nums(nums);
                    t_nums.erase(i);
                    res = res || _check(t_nums, !isFirst, current + i, target);
                }
            } else {
                res = true;

                for (auto i : nums) {
                    set<int> t_nums(nums);
                    t_nums.erase(i);
                    res = res && _check(t_nums, !isFirst, current + i, target);
                }
            }

            return res;
        }
};
```

It is correct, However, it gets a TLE. So the problem is that the number of branches is too large. One solution is to find a way to reduce the branches.

In some case, the most time-cost step is the copying of the set. So I try to solve the problem first.


Then, use memorized method to reduce the time cost. Then use BITSET instead of SET to reduce the space cost.

```
using namespace std;

class Solution {
    private:
        vector<int> *winSet;
        bool canIWinAux(int numSet, int total) {
            int maxnum = maxNum(numSet);
            if (maxnum >= total) return true;
            if (winSet->at(numSet) != -1) return winSet->at(numSet);
            for (int num = 1; num <= maxnum; num++) {
                int mask = 1 << (num-1);
                //	skip used number
                if (!(numSet&mask)) continue;
                //	skip if take num as first choice
                if (canIWinAux((int)(numSet&(~mask)), total - num)) continue;
                //	otherwise this num is the smart choice
                winSet->at(numSet) = true;
                return true;
            }
            //	have tried every number in numSet and fail to win
            winSet->at(numSet) = false;
            return false;
        }

        //	return the maximum number avaliable in the numSet
        int maxNum(int numSet) {
            int firstBit = 0;
            while (numSet) {
                firstBit++;
                numSet >>= 1;
            }
            return firstBit;
        }


    public:
        bool canIWin(int maxChoosableInteger, int desiredTotal) {
            if (desiredTotal>maxChoosableInteger*(maxChoosableInteger + 1) / 2) return false;
            if (desiredTotal <= maxChoosableInteger) return true;
            if (desiredTotal % (1 + maxChoosableInteger) == 0 && maxChoosableInteger % 2 == 0) return false;

            //	numSet: the k-nd bit stands for number k; 1 is usable, 0 is used, -1 is unknown.
            int numSet = (1 << (maxChoosableInteger))-1;
            winSet = new vector<int>(1 << maxChoosableInteger, -1);
            return canIWinAux(numSet, desiredTotal);
        }
};
```

Then it gets AC.
