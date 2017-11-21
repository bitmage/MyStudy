---
title: My Calendar I
date: 2017-11-19 19:40:48
tags:
    - Array
---

> Implement a MyCalendar class to store your events. A new event can be added if adding the event will not cause a double booking.
>
> Your class will have the method, book(int start, int end). Formally, this represents a booking on the half open interval [start, end), the range of real numbers x such that start <= x < end.
>
> A double booking happens when two events have some non-empty intersection (ie., there is some time that is common to both events.)
>
> For each call to the method MyCalendar.book, return true if the event can be added to the calendar successfully without causing a double booking. Otherwise, return false and do not add the event to the calendar.
> Your class will be called like this: MyCalendar cal = new MyCalendar(); MyCalendar.book(start, end)
>
> **Example 1:**
```
    MyCalendar();
    MyCalendar.book(10, 20); // returns true
    MyCalendar.book(15, 25); // returns false
    MyCalendar.book(20, 30); // returns true
Explanation:
    The first event can be booked.  The second can't because time 15 is already booked by another event.
    The third event can be booked, as the first event takes every time less than 20, but not including 20.
```
> **Note:**
> + The number of calls to MyCalendar.book per test case will be at most 1000.
> + In calls to MyCalendar.book(start, end), start and end are integers in the range [0, 10^9].

<!--more-->

At first I think it is a hard problem. Because I think I need to mark all the line.

So, my AC code is long and ugly:

```
using namespace std;

class MyCalendar
{
public:

    list<pair<int, int>> ranges;

    MyCalendar()
    {
        ranges.push_back(pair<int, int>(0, 0));
        ranges.push_back(pair<int, int>(INT_MAX, INT_MAX));
    }

    bool book(int start, int end)
    {
        if (start >= end) {
            return false;
        }

        pair<int, int> range = pair<int, int>(start, end);
        int firstOk = false, secondOk = false;
        for (auto _range = ranges.begin(); _range != ranges.end(); _range++) {
            if (firstOk == false && _range->second <= range.first) {
                firstOk = true;
                continue;
            }
            if (firstOk == true) {
                if(_range->first >= range.second) {
                    secondOk = true;
                    ranges.insert(_range, range);
                    break;
                } else {
                    firstOk = _range->second <= range.first;
                }
            }
        }
        return secondOk;
    }
};
```

However you just need to check whether the time period is in the borrowed time.

```
using namespace std;

class MyCalendar
{
public:
    list<pair<int, int>> books;

    MyCalendar()
    {
    }

    bool book(int start, int end)
    {
        for (pair<int, int> b: books) {
            if (max(b.first, start) < min(b.second, end))
                return false;
        }
        books.push_back(pair<int, int>(start, end));
        return true;
    }
};
```

Simple and clean AC code.
