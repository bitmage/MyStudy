---
title: Reconstruct Itinerary
date: 2017-10-19 10:47:19
tags:
    - Depth-first Search
---


> Given a list of airline tickets represented by pairs of departure and arrival airports [from, to], reconstruct the itinerary in order. All of the tickets belong to a man who departs from JFK. Thus, the itinerary must begin with JFK.
>
> **Note:**
>
> + If there are multiple valid itineraries, you should return the itinerary that has the smallest lexical order when read as a single string. For example, the itinerary ["JFK", "LGA"] has a smaller lexical order than ["JFK", "LGB"].
> + All airports are represented by three capital letters (IATA code).
> + You may assume all tickets form at least one valid itinerary.
>
> **Example 1:**
```
tickets = [["MUC", "LHR"], ["JFK", "MUC"], ["SFO", "SJC"], ["LHR", "SFO"]]
Return ["JFK", "MUC", "LHR", "SFO", "SJC"].
```
> **Example 2:**
```
tickets = [["JFK","SFO"],["JFK","ATL"],["SFO","ATL"],["ATL","JFK"],["ATL","SFO"]]
Return ["JFK","ATL","JFK","SFO","ATL","SFO"].
Another possible reconstruction is ["JFK","SFO","ATL","JFK","ATL","SFO"]. But it is larger in lexical order.
```

<!--more-->

Easy one, DFS can solve this problem.

```
using namespace std;

class Solution {
public:

    vector<string> RES;

    void visit(map<string, map<string, int>> &fromto, string currentCity, vector<string> &path, int targetCityNum) {
        path.push_back(currentCity);
        // cout << currentCity << path.size() << endl;
        if ((int)path.size() == targetCityNum + 1) {
            for (auto i : path) {
                RES.push_back(i);
            }
            return;
        }

        for (auto nextCity : fromto[currentCity]) {
            if (nextCity.second > 0) {
                fromto[currentCity][nextCity.first]--;
                visit(fromto, nextCity.first, path, targetCityNum);
                if (RES.size() > 0) {
                    return;
                }
                fromto[currentCity][nextCity.first]++;
            }
        }
        path.pop_back();
    }

    vector<string> findItinerary(vector<pair<string, string>> tickets) {
        vector<string> res;
        map<string, map<string, int>> fromto;
        for (auto ticket : tickets) {
            if (fromto.find(ticket.first) != fromto.end()) {
                fromto[ticket.first][ticket.second]++;
            } else {
                map<string, int> to;
                to.insert(pair<string, int>(ticket.second, 1));
                fromto.insert(pair<string, map<string, int>>(ticket.first, to));
            }
        }
        visit(fromto, "JFK", res, tickets.size());
        return RES;
    }
};
```

It gets AC, done.
