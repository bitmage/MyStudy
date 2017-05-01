---
title: Maximum Vacation Days
date: 2017-05-01 13:50:51
tags:
    - Dynamic Programming
    - Depth-first Search
---

> LeetCode wants to give one of its best employees the option to travel among N cities to collect algorithm problems. But all work and no play makes Jack a dull boy, you could take vacations in some particular cities and weeks. Your job is to schedule the traveling to maximize the number of vacation days you could take, but there are certain rules and restrictions you need to follow.
>
> Rules and restrictions:
>
> + You can only travel among N cities, represented by indexes from 0 to N-1. Initially, you are in the city indexed 0 on Monday.
> + The cities are connected by flights. The flights are represented as a N*N matrix (not necessary symmetrical), called flights representing the airline status from the city i to the city j. If there is no flight from the city i to the city j, flights[i][j] = 0; Otherwise, flights[i][j] = 1. Also, flights[i][i] = 0 for all i.
> + You totally have K weeks (each week has 7 days) to travel. You can only take flights at most once per day and can only take flights on each week's Monday morning. Since flight time is so short, we don't consider the impact of flight time.
> + For each city, you can only have restricted vacation days in different weeks, given an N*K matrix called days representing this relationship. For the value of days[i][j], it represents the maximum days you could take vacation in the city i in the week j.
>
> You're given the flights matrix and days matrix, and you need to output the maximum vacation days you could take during K weeks.
> <!--more-->
> Example 1:
```
Input:flights = [[0,1,1],[1,0,1],[1,1,0]], days = [[1,3,1],[6,0,3],[3,3,3]]
Output: 12
Explanation:
Ans = 6 + 3 + 3 = 12.

One of the best strategies is:
1st week : fly from city 0 to city 1 on Monday, and play 6 days and work 1 day.
(Although you start at city 0, we could also fly to and start at other cities since it is Monday.)
2nd week : fly from city 1 to city 2 on Monday, and play 3 days and work 4 days.
3rd week : stay at city 2, and play 3 days and work 4 days.
```
> Example 2:
```
Input:flights = [[0,0,0],[0,0,0],[0,0,0]], days = [[1,1,1],[7,7,7],[7,7,7]]
Output: 3
Explanation:
Ans = 1 + 1 + 1 = 3.

Since there is no flights enable you to move to another city, you have to stay at city 0 for the whole 3 weeks.
For each week, you only have one day to play and six days to work.
So the maximum number of vacation days is 3.
```
> Example 3:
```
Input:flights = [[0,1,1],[1,0,1],[1,1,0]], days = [[7,0,0],[0,7,0],[0,0,7]]
Output: 21
Explanation:
Ans = 7 + 7 + 7 = 21

One of the best strategies is:
1st week : stay at city 0, and play 7 days.
2nd week : fly from city 0 to city 1 on Monday, and play 7 days.
3rd week : fly from city 1 to city 2 on Monday, and play 7 days.
```
> Note:
>
> + N and K are positive integers, which are in the range of [1, 100].
> + In the matrix flights, all the values are integers in the range of [0, 1].
> + In the matrix days, all the values are integers in the range [0, 7].
> + You could stay at a city beyond the number of vacation days, but you should work on the extra days, which won't be counted as vacation days.
> + If you fly from the city A to the city B and take the vacation on that day, the deduction towards vacation days will count towards the vacation days of city B in that week.
> + We don't consider the impact of flight hours towards the calculation of vacation days.

This is Leetcode No.568, and it is also the last problem of Leetcode Weekly contest 30. I don't have enough time to figure this problem out in the contest. So, here I will use the holiday to solve the problem.

First, you can quickly find a DFS solution to solve the problem:

```
using namespace std;

class Solution {
    public:
        vector<vector<int> > MAP, DAYS;
        int WEEK, RES, CITY_NUM;
        int maxVacationDays(vector<vector<int> >& flights, vector<vector<int> >& days) {
            RES = 0;
            MAP = flights;
            DAYS = days;
            WEEK = days[0].size();
            CITY_NUM = days.size();

            for (int currentCity = 0; currentCity < CITY_NUM; currentCity++) {
                if (MAP[0][currentCity] == 1 || currentCity == 0) {
                    visit(currentCity, 0, 0);
                }
            }

            return RES;
        }

        void visit(int currentCity, int currentWeek, int currentVacation) {
            if (currentWeek == WEEK) {
                RES = max(currentVacation, RES);
                return;
            }

            currentVacation = currentVacation + DAYS[currentCity][currentWeek];
            for (int nextCity = 0; nextCity < CITY_NUM; nextCity++) {
                if (nextCity == currentCity || MAP[currentCity][nextCity] == 1) {
                    visit(nextCity, currentWeek + 1, currentVacation);
                }
            }
        }
};
```

But for the largest case, the code is TLE. I don't feel strange because I haven't use any performance-improvement, if I pass the problem so easy, it will not be so much fun.

Then, I use the DP method to improve the performance. Try to use a `Map<pair<city, week>, maxVacation>` to reduce branches.

```
using namespace std;

class Solution {
    public:
        map<pair<int, int>, int> DP;
        vector<vector<int> > MAP, DAYS;
        int WEEK, RES, CITY_NUM;
        int maxVacationDays(vector<vector<int> >& flights, vector<vector<int> >& days) {
            DP.clear();
            RES = 0;
            MAP = flights;
            DAYS = days;
            WEEK = days[0].size();
            CITY_NUM = days.size();

            for (int currentCity = 0; currentCity < CITY_NUM; currentCity++) {
                if (MAP[0][currentCity] == 1 || currentCity == 0) {
                    visit(currentCity, 0, 0);
                }
            }

            return RES;
        }

        void visit(int currentCity, int currentWeek, int currentVacation) {
            if (currentWeek == WEEK) {
                RES = max(currentVacation, RES);
                return;
            }

            currentVacation = currentVacation + DAYS[currentCity][currentWeek];
            if (DP.find(pair<int, int>(currentCity, currentWeek)) != DP.end()
                    && DP.find(pair<int, int>(currentCity, currentWeek))->second >= currentVacation)
            {
                return;
            } else {
                DP.insert(pair<pair<int, int>, int>(pair<int, int>(currentCity, currentWeek), currentVacation));
            }
            for (int nextCity = 0; nextCity < CITY_NUM; nextCity++) {
                if (nextCity == currentCity || MAP[currentCity][nextCity] == 1) {
                    visit(nextCity, currentWeek + 1, currentVacation);
                }
            }
        }
};
```

But, it still gets TLE. WTF!

So, I try to think another way. Maybe Greedy method.

```
using namespace std;

class Solution {
    public:
        int maxVacationDays(vector<vector<int> >& flights, vector<vector<int> >& days) {
            vector<vector<int> > DP;
            for (int i = 0; i < (int)days.size(); i++) {
                vector<int> cityDay;
                for (int j = 0; j < (int)days[0].size(); j++) {
                    cityDay.push_back(-1);
                }
                DP.push_back(cityDay);
            }

            for (int city = 0; city < (int)days.size(); city++) {
                if (city == 0 || flights[0][city] == 1) {
                    DP[city][0] = days[city][0];
                }
            }
            for (int week = 1; week < (int)days[0].size(); week++) {
                for (int currentCity = 0; currentCity < (int)days.size(); currentCity++) {
                    for (int nextCity = 0; nextCity < (int)days.size(); nextCity++) {
                        if (DP[currentCity][week - 1] != -1) {
                            if (flights[currentCity][nextCity] || (currentCity == nextCity)) {
                                DP[nextCity][week] = max(DP[nextCity][week], DP[currentCity][week - 1] + days[nextCity][week]);
                            }
                        }
                    }
                }
            }

            int res = 0;
            for (int city = 0; city < (int)days.size(); city++) {
                res = max(res, DP[city][days[0].size() - 1]);
            }
            return res;
        }
};
```

Then I find a DP way that using a DP[city][week] to mark the max vacation in week in city.

Then using the DP[nextCity][week] = max(DP[nextCity][week], DP[currentCity][week - 1] + days[nextCity][week]);

It gets AC.
