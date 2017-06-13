---
title: Balls and Boxes
date: 2017-05-20 12:10:43
tags:
    - Greedy
    - Dynamic Programming
    - Depth-first Search
    - Breath-first Search
---



> Chelsea has multiple balls of n different colors. For every color i there are A[i] number of balls. She also has m boxes. The jth box is allowed to hold C[j] number of balls.
>
> Her goal is to put these balls into the boxes as per the following rules:
>
>  + Each box can contain at most one ball of any color.
>  + For every i ball that goes into a j box , she earns B[i][j] candies.
>  + In the end, for any box j if the number of balls added exceeds the allowed capacity (C[j]) by the value x , she pays x^2 candies.
>
> There is no need for her to put every ball into a box. Similarly, there can be empty boxes in the end. She only wants to earn as many candies as possible. Find the maximum number of candies that she can earn.
>
> **Input Format**
> + The first line contains two integers n and m.
> + The second line contains n space-separated integers, of them represents A[i].
> + The third line contains m space-separated integers, of them represents C[i].
> + Each of the subsequent lines contains space-separated integers, the jth element of the ith line represents the value of B[i][j].
>
> **Constraints**
> + 1 <= n,m,A[i],C[i] <= 100
> + 0 <= B[i][j] <= 1000
>
> **Output Format**
> + Print one integer representing the maximum number of candies she can earn.
>
> **Example**
```
Sample Input 0
2 2
1 1
0 2
1 7
3 1
Sample Output 0
9
```

<!--more-->

This is one problem of Week of Code 32 in the HackerRank. And I can't finish this problem, I just get 46.67 points of 75. So, here I just paste my code here and I will complete this paper when I totally solve this problem.

```
using namespace std;

int res = 0;

int calc(vector<int> N, vector<int> C, int currentValue) {
    for (int i = 0; i < (int)N.size(); i++) {
        if (N[i] > C[i]) {
            currentValue -= (N[i] - C[i])*(N[i] - C[i]);
        }
    }
    return currentValue;
}

void putBalls(vector<int> N, vector<int> A, vector<int> C, vector<vector<int> > B, int currentValue, int currentScore) {
    int isAllEmpty = true;
    for (int i = 0; i < (int)A.size(); i++) {
        if (A[i] > 0) {
            isAllEmpty = false;
            break;
        }
    }
    if (isAllEmpty) {
        return;
    }

    int maxScoreSoFar = currentScore;
    for (int color = 0; color < (int)A.size(); color++) {
        if (A[color] > 0) {
            for (int boxIdx = 0; boxIdx < (int)C.size(); boxIdx++) {
                N[boxIdx]++;
                A[color]--;
                currentValue += B[color][boxIdx];

                int tmpValue = B[color][boxIdx];
                B[color][boxIdx] = 0;

                int score = calc(N, C, currentValue);
                if (score > maxScoreSoFar) {
                    maxScoreSoFar = score;
                    res = max(score, res);
                    putBalls(N, A, C, B, currentValue, score);
                }

                B[color][boxIdx] = tmpValue;
                currentValue -= B[color][boxIdx];
                A[color]++;
                N[boxIdx]--;
            }
        }
    }
}


int main(int argc, char *argv[]) {
    int n, m;
    while (cin >> n >> m) {
        vector<int> A(n);
        vector<int> C(m);

        vector<vector<int> > B(n, vector<int>(m, 0));

        for (int i = 0; i < n; i++) {
            cin >> A[i];
        }
        for (int i = 0; i < m; i++) {
            cin >> C[i];
        }

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                cin >> B[i][j];
            }
        }

        vector<int> N(m, 0);
        putBalls(N, A, C, B, 0, 0);

        cout << res << endl;
    }
    return 0;
}
```

That will be continue...
