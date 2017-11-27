---
title: Asteroid Collision
date: 2017-11-27 13:22:36
tags:
    - Stack
---

> We are given an array asteroids of integers representing asteroids in a row.
>
> For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.
>
> Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.
>
> **Example 1:**
```
Input:
asteroids = [5, 10, -5]
Output: [5, 10]
Explanation:
The 10 and -5 collide resulting in 10.  The 5 and 10 never collide.
```
> **Example 2:**
```
Input:
asteroids = [8, -8]
Output: []
Explanation:
The 8 and -8 collide exploding each other.
```
> **Example 3:**
```
Input:
asteroids = [10, 2, -5]
Output: [10]
Explanation:
The 2 and -5 collide resulting in -5.  The 10 and -5 collide resulting in 10.
```
> **Example 4:**
```
Input:
asteroids = [-2, -1, 1, 2]
Output: [-2, -1, 1, 2]
Explanation:
The -2 and -1 are moving left, while the 1 and 2 are moving right.
Asteroids moving the same direction never meet, so no asteroids will meet each other.
```
> **Note:**
> + The length of asteroids will be at most 10000.
> + Each asteroid will be a non-zero integer in the range [-1000, 1000]..

<!--more-->

An intersting problem, you can just to find the first asteroid which from right to left, and try to figure out that this planet can make it.

If don't, mark the planet to 0, and if it hit other planet, mark the planet to zero. So the remaining planet is the ones don't collse. The code is:

```
using namespace std;

class Solution
{
public:

    bool findLeftIdx(vector<int> &asteroids, int idx)
    {
        for (int i = idx - 1; i >= 0; i--) {
            if (asteroids[i] > 0) {
                return i;
            }
        }
        return -1;
    }

    bool findRightIdx(vector<int> &asteroids, int idx)
    {
        for (int i = idx + 1; i < (int)asteroids.size(); i++) {
            if (asteroids[i] < 0) {
                return i;
            }
        }
        return asteroids.size();
    }

    vector<int> asteroidCollision(vector<int>& asteroids)
    {
        vector<int> origin(asteroids), res;

        for (int i = 0; i < (int)asteroids.size(); i++) {
            if (asteroids[i] < 0) {
                for (int j = i; j >= 0; j--) {
                    if (asteroids[j] > 0) {
                        if (abs(asteroids[i]) > asteroids[j]) {
                            asteroids[j] = 0;
                        }
                        if (abs(asteroids[i]) < asteroids[j]) {
                            asteroids[i] = 0;
                            break;
                        }
                        if (abs(asteroids[i]) == asteroids[j]) {
                            asteroids[i] = 0;
                            asteroids[j] = 0;
                            break;
                        }
                    }
                }
            }
        }

        for (int i = 0; i < (int)asteroids.size(); i++) {
            if (asteroids[i] != 0) {
                res.push_back(asteroids[i]);
            }
        }

        return res;
    }
};
```

It gets AC.
