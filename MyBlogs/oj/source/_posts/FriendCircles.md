---
title: Friend Circles
date: 2017-04-03 22:51:21
tags:
    - Graph
    - Depth-first Search
---


> There are N students in a class. Some of them are friends, while some are not. Their friendship is transitive in nature. For example, if A is a direct friend of B, and B is a direct friend of C, then A is an indirect friend of C. And we defined a friend circle is a group of students who are direct or indirect friends.
>
> Given a N*N matrix M representing the friend relationship between students in the class. If M[i][j] = 1, then the ith and jth students are direct friends with each other, otherwise not. And you have to output the total number of friend circles among all the students.
>
> Example 1:
> ```
Input:
[
    [1,1,0],
    [1,1,0],
    [0,0,1]
]
Output: 2
```
> Explanation:
> + The 0th and 1st students are direct friends, so they are in a friend circle.
> + The 2nd student himself is in a friend circle. So return 2.
>
> Example 2:
> ```
Input:
[
    [1,1,0],
    [1,1,1],
    [0,1,1]
]
Output: 1
```
> Explanation:
> + The 0th and 1st students are direct friends, the 1st and 2nd students are direct friends,
> + So the 0th and 2nd students are indirect friends. All of them are in the same friend circle, so return 1.
<!--more-->
>
> Note:
> + N is in range [1,200].
> + M[i][i] = 1 for all students.
> + If M[i][j] = 1, then M[j][i] = 1.

It is Leetcode No.547 and is a simple problem about Graph. After reading the problem description. You can understand that the solution is to find how many circles in the Graph.

At first I think the indirect friends means only your friend's friend. So, this makes me a little misunderstanding.

But once you know what you should do to solve this problem. The solution is about to come.

```
using namespace std;

class Solution {
    public:
        int findCircleNum(vector<vector<int> >& M) {
            vector<bool> visited(M.size(), false);

            int res = 0;
            for (int uid = 0; uid < (int)M.size(); uid++) {
                res = res + dfs(uid, M, visited);
            }

            return res;
        }

        bool dfs(int uid, vector<vector<int> > &M, vector<bool> &visited) {
            if (visited[uid] == true) {
                return false;
            }

            visited[uid] = true;
            for (int fid = 0; fid < (int)M.size(); fid++) {
                if (M[fid][uid] == 1) {
                    dfs(fid, M, visited);
                }
            }
            return true;
        }
};
```

A really easy problem. It gets AC.
