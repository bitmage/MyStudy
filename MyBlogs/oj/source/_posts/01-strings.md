---
title: 01-strings
date: 2017-08-02 15:17:58
tags:
---


> **Description**
>
> Given two integers n and m, is there a string containing exactly n "0"s and m "1"s while it doesn't contain any substring of "001" or "11"?
>
> If such strings exist output the lexicographically smallest one. Otherwise output NO.
>
> **Input**
>
> One line with two integers, determining n and m (0 \<= n,m \<= 100000,0 \< n + m)
>
> **Output**
>
> One line with the lexicographically smallest string which is the answer or NO.
>
> **Sample Input**
```
    2 3
```
> Sample Output
```
    10101
```

<!--more-->

Really easy one, you just need to consider full-conditions. What will happen when n > m and n < m and n == m.

The code is clear to understand.

```
using namespace std;

int main() {
    int n, m;
    while (cin >> n >> m) {
        string res = "";

        if (n < m - 1) {
            res = "NO";
        } else if (n == m - 1) {
            while (n > 0) {
                res += "10";
                n--;
            }
            res += "1";
        } else if (n >= m) {
            while (m > 0) {
                res += "01";
                m--;
                n--;
            }
            for (int i = 0; i < n; i++) {
                res += "0";
            }
        }

        cout << res << endl;
    }
    return 0;
}
```

It gets AC.
