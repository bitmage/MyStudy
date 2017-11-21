---
title: My Calendar II
date: 2017-11-20 19:47:43
tags:
    - Array
    - Tree
---

> Implement a MyCalendarTwo class to store your events. A new event can be added if adding the event will not cause a triple booking.
>
> Your class will have one method, book(int start, int end). Formally, this represents a booking on the half open interval [start, end), the range of real numbers x such that start <= x < end.
>
> A triple booking happens when three events have some non-empty intersection (ie., there is some time that is common to all 3 events.)
>
> For each call to the method MyCalendar.book, return true if the event can be added to the calendar successfully without causing a triple booking. Otherwise, return false and do not add the event to the calendar.
> Your class will be called like this: MyCalendar cal = new MyCalendar(); MyCalendar.book(start, end)
>
> **Example 1:**
```
    MyCalendar();
    MyCalendar.book(10, 20); // returns true
    MyCalendar.book(50, 60); // returns true
    MyCalendar.book(10, 40); // returns true
    MyCalendar.book(5, 15); // returns false
    MyCalendar.book(5, 10); // returns true
    MyCalendar.book(25, 55); // returns true
Explanation:
    The first two events can be booked.  The third event can be double booked.
    The fourth event (5, 15) can't be booked, because it would result in a triple booking.
    The fifth event (5, 10) can be booked, as it does not use time 10 which is already double booked.
    The sixth event (25, 55) can be booked, as the time in [25, 40) will be double booked with the third event;
    the time [40, 50) will be single booked, and the time [50, 55) will be double booked with the second event.
```
> **Note:**
> + The number of calls to MyCalendar.book per test case will be at most 1000.
> + In calls to MyCalendar.book(start, end), start and end are integers in the range [0, 10^9].

<!--more-->

This is a extended problem from the My Calendar I. It is mush interesting. You need to mark the double booked part.

```
using namespace std;

class MyCalendar
{
public:
    vector<pair<int, int>> books;
    MyCalendar() {}

    bool book(int start, int end)
    {
        for (int i = 0; i < (int)books.size(); i++) {
            if (max(books[i].first, start) < min(books[i].second, end)) {
                return false;
            }
        }
        books.push_back({start, end});
        return true;
    }
};

class MyCalendarTwo
{
public:
    vector<pair<int, int>> books;

    MyCalendarTwo() {}

    bool book(int start, int end)
    {
        MyCalendar myCalendar;
        for (int i = 0; i < (int)books.size(); i++) {
            if (max(start, books[i].first) < min(end, books[i].second)) {
                pair<int, int> overlap;
                overlap.first = max(books[i].first, start);
                overlap.second = min(books[i].second, end);

                if (!myCalendar.book(overlap.first, overlap.second)) {
                    return false;
                }
            }
        }
        books.push_back({start, end});
        return true;
    }
};

/**
 * Your MyCalendarTwo object will be instantiated and called as such:
 * MyCalendarTwo obj = new MyCalendarTwo();
 * bool param_1 = obj.book(start,end);
 */
```

So, we can reuse the previous problem code to check the overlap part.

It gets AC.
