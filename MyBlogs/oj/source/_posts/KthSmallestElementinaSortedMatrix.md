---
title: Kth Smallest Element in a Sorted Matrix
date: 2017-04-24 23:32:17
tags:
    - Heap
    - Binary Search
---

> Given a n x n matrix where each of the rows and columns are sorted in ascending order, find the kth smallest element in the matrix.
>
> Note that it is the kth smallest element in the sorted order, not the kth distinct element.
>
> Example:
>```
matrix = [
   [ 1,  5,  9],
   [10, 11, 13],
   [12, 13, 15]
],
k = 8,

return 13.
```

<!--more-->

This is Leetcode No.378. It is a easy problem. Because, its tags are Heap and Binary Search, but I submit the code with Sort method like below:

```
using namespace std;

class Solution {
    public:
        int kthSmallest(vector<vector<int> >& matrix, int kth) {
            vector<int> nums;
            for (int idx = 0; idx < (int)matrix.size(); idx++) {
                for (int idy = 0; idy < (int)matrix[0].size(); idy++) {
                    nums.push_back(matrix[idx][idy]);
                }
            }
            sort(nums.begin(), nums.end());
            return nums[kth];
        }
};
```

Its time complex is O(nlogn) and its space complex is O(n). So, I don't think this is a good solution.


The following solution using a Heap to reduce the time complex.

```
class Solution {
    public:
        int kthSmallest(vector<vector<int>>& matrix, int k) {
            int xsize = matrix.size();
            int ysize = matrix[0].size();
            priority_queue<Node, vector<Node>, Cmp> pq;
            pq.push(Node(matrix[0][0], 0, 0));
            Node tmp(-1, -1, -1);
            while(k--){
                tmp = pq.top();
                pq.pop();
                if(tmp.i + 1 < xsize){
                    pq.push(Node(matrix[tmp.i + 1][tmp.j], tmp.i + 1, tmp.j));
                }
                if(tmp.i == 0 && tmp.j + 1 < ysize){
                    pq.push(Node(matrix[tmp.i][tmp.j + 1], tmp.i, tmp.j + 1));
                }
            }
            return tmp.val;
        }
    private:
        struct Node {
            int val;
            int i;
            int j;
            Node(int vv, int ii,  int jj): val(vv), i(ii), j(jj){};
        };
        struct Cmp {
            bool operator()(const Node& a, const Node& b){
                return a.val > b.val;
            }
        };
};
```

It also gets AC.
