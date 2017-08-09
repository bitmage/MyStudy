---
title: Trapping Rain Water
date: 2017-08-01 16:01:34
tags:
    - Array
    - Stack
    - Two Pointers
---


> Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.
>
> **For example:**
```
    Given [0,1,0,2,1,0,1,3,2,1,2,1]
    Return 6.
```
> ![image](http://www.leetcode.com/static/images/problemset/rainwatertrap.png)

<!--more-->

You can see from the picture, if we make it in a x\*y size box. You can use water[idx][idy] to mark a water.

We can find that if we can find a height[i] and a height[j] where i < idx and j > idx and min(height[i], height[j]) >= y.

We can know that the water[idx][idy] can be stored.

So, we can use this function to check the water is OK.

```
// 0 < currentIdx < height.size() - 1
bool canContain(int currentHeight, int currentIdx, vector<int> &height) {
    bool isLeftOk = false, isRightOk = false;
    for (int i = 0; i < currentIdx; i++) {
        if (height[i] >= currentHeight) {
            isLeftOk = true;
            break;
        }
    }
    if (!isLeftOk) {
        return false;
    }
    for (int i = currentIdx + 1; i < (int)height.size(); i++) {
        if (height[i] >= currentHeight) {
            isRightOk = true;
            break;
        }
    }

    return isLeftOk && isRightOk;
}
```

The whole code is:

```
using namespace std;

class Solution {
    public:
        // 0 < currentIdx < height.size() - 1
        bool canContain(int currentHeight, int currentIdx, vector<int> &height) {
            bool isLeftOk = false, isRightOk = false;
            for (int i = 0; i < currentIdx; i++) {
                if (height[i] >= currentHeight) {
                    isLeftOk = true;
                    break;
                }
            }
            if (!isLeftOk) {
                return false;
            }
            for (int i = currentIdx + 1; i < (int)height.size(); i++) {
                if (height[i] >= currentHeight) {
                    isRightOk = true;
                    break;
                }
            }

            return isLeftOk && isRightOk;
        }

        int trap(vector<int>& height) {
            if (height.size() <= 2) {
                return 0;
            }

            int res = 0;
            for (int currentIdx = 1; currentIdx < (int)height.size() - 1; currentIdx++) {
                for (int currentHeight = height[currentIdx] + 1; canContain(currentHeight, currentIdx, height); currentHeight++) {
                    res++;
                }
            }

            return res;
        }
};
```

Then we can count it one by one. But the code is TLE without doubt. We should find a better way to solve.

Because we can know that we count repeat jobs. What if we just make the two pointer.

```
using namespace std;

class Solution {
    public:
        int trap(vector<int>& heights) {
            if (heights.size() <= 2) {
                return 0;
            }

            int res = 0;
            int leftIdx = 0, rightIdx = heights.size() - 1;
            int leftHeightSoFar = heights[leftIdx], rightHeightSoFar = heights[rightIdx];

            while (leftIdx < rightIdx) {
                while (heights[leftIdx] >= leftHeightSoFar) {
                    leftHeightSoFar = heights[leftIdx];
                    leftIdx++;
                }
                while (heights[rightIdx] >= rightHeightSoFar) {
                    rightHeightSoFar = heights[rightIdx];
                    rightIdx--;
                }
                while (leftIdx < rightIdx) {
                    if (leftHeightSoFar < rightHeightSoFar) {
                        /* move from left */
                        res += leftHeightSoFar - heights[leftIdx];
                        leftIdx++;
                        if (heights[leftIdx] >= leftHeightSoFar) {
                            break;
                        }
                    } else {
                        /* move from right */
                        res += rightHeightSoFar - heights[rightIdx];
                        rightIdx--;
                        if (heights[rightIdx] >= rightHeightSoFar) {
                            break;
                        }
                    }
                }
            }

            return res;
        }
};
```

It gets AC.
