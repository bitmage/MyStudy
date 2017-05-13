---
title: Queue Reconstruction by Height
date: 2017-05-13 23:11:29
tags:
    - Greedy
---


> Suppose you have a random list of people standing in a queue. Each person is described by a pair of integers (h, k), where h is the height of the person and k is the number of people in front of this person who have a height greater than or equal to h. Write an algorithm to reconstruct the queue.
>
> Note:
> The number of people is less than 1,100.
>
> Example
```
Input:
[[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]]

Output:
[[5,0], [7,0], [5,2], [6,1], [4,4], [7,1]]
```

<!--more-->

This is Leetcode No.406. At first I tried to finish the Leetcode No.488: 『Zuma Game』, but I failed to solve this problem. So, to avoid being shameful. I write the blog about how to solve this problem. After the contest of tommorrow I will find time to solve the problem metioned before.

This is a simple problem. The most important thing is that you should find the best way to sort the array.

Use the example above. We can sort the array first by height from tall to low and the num from small to large.

Then we get `[7, 0], [7, 1], [6, 1], [5, 0], [5, 2], [4, 4]`.

Then we can sort the array. First is [7, 0], [7, 1] and when we get [6, 1], we should find that the position between the two people is ok. Then we get `[7, 0], [6, 1], [7, 1]`.

When we get [5, 0], then the person should be the first. And the [5, 2] goes to the third position.

Finally, we can find that the following person just should be inserted into the person.second index.

Then the code comes:

```
using namespace std;

class Solution {
    public:
        vector<pair<int, int>> reconstructQueue(vector<pair<int, int> >& people) {
            auto comp = [](const pair<int, int>& p1, const pair<int, int>& p2) {
                return p1.first > p2.first || (p1.first == p2.first && p1.second < p2.second);
            };
            sort(people.begin(), people.end(), comp);
            vector<pair<int, int> > res;
            for (auto& p : people)
                res.insert(res.begin() + p.second, p);
            return res;
        }
};
```

It gets AC. Short and beautiful.
