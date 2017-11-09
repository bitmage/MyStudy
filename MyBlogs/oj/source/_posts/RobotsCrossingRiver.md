---
title: Robots Crossing River
date: 2017-11-09 14:50:10
tags:
    - Greedy
    - Array
---

> **Description**
>
> Three kinds of robots want to move from Location A to Location B and then from Location B to Location C by boat.
>
> The only one boat between A and B and only one between B and C. Moving from A to B (and vise versa) takes 2 hours with robots on the boat. Moving from B to C (and vice versa) takes 4 hours. Without robots on the boat the time can be reduced by half. The boat between A and B starts at time 0 moving from A to B. And the other boat starts 2 hours later moving from B to C.
>
> You may assume that embarking and disembarking takes no time for robots.
>
> **There are some limits:**
> + Each boat can take 20 robots at most.
> + On each boat if there are more than 15 robots, no single kind of robots can exceed 50% of the total amount of robots on that boat.
> + At most 35 robots are allowed to be stranded at B. If a robot goes on his journey to C as soon as he arrives at B he is not considered stranded at B.
>
> Given the number of three kinds robots what is the minimum hours to take them from A to C?
> **Input: Three integers X, Y and Z denoting the number of the three kinds of robots. (0 ≤ X, Y and Z ≤ 1000)**
> **Output: The minimum hours.**
> **Sample Input: 40 4 4 **
> **Sample Output: 24**

<!--more-->

At first I think it is a tough problem. Because there are so many limits. But if you look deeply into this problem. You will find, the trip from A to B is not the point.

So, the total cost from A to C is the time from B to C and plus two hours (the first time from A to B).

The code is:

```
using namespace std;

bool cmp(const int a, const int b)
{
    return a > b;
}

int calc(int times)
{
    if (times == 0) {
        return 0;
    }

    return times*4 + (times - 1)*2 + 2;
}

int main()
{
    ios::sync_with_stdio(false);
    vector<int> bots(3);
    while(cin >> bots[0] >> bots[1] >> bots[2]) {
        int sumbots = bots[0] + bots[1] + bots[2];
        sort(bots.begin(), bots.end(), cmp);
        if (bots[0] <= bots[1] + bots[2]) {
            if (sumbots%20 == 0) {
                cout << calc(sumbots/20) << endl;
            } else {
                cout << calc(sumbots/20 + 1) << endl;
            }
        } else {
            int bots1 = bots[0], bots2 = bots[1] + bots[2];
            int times = 0;
            while (bots2 > 0) {
                if (bots2 >= 10) {
                    bots2 = bots2 - 10;
                    bots1 = bots1 - 10;
                    times++;
                } else if (bots2 >= 8 && bots2 < 10) {
                    bots1 = bots1 - bots2;
                    bots2 = 0;
                    times++;
                } else if (bots2 < 8 && bots2 > 0) {
                    bots1 = max(0, bots1 - (15 - bots2));
                    bots2 = 0;
                    times++;
                }
            }
            if (bots1%15 == 0) {
                times += bots1/15;
            } else {
                times += bots1/15 + 1;
            }
            cout << calc(times) << endl;
        }
    }

    return 0;
}
```

It gets AC. Done.
