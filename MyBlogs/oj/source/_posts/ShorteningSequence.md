---
title: Shortening Sequence
date: 2017-08-11 13:57:36
tags:
    - Math
---


> **Description**
>
> There is an integer array A1, A2 ...AN. Each round you may choose two adjacent integers. If their sum is an odd number, the two adjacent integers can be deleted.
>
> Can you work out the minimum length of the final array after elaborate deletions?
>
> **Input**
>
> + The first line contains one integer N, indicating the length of the initial array.
> + The second line contains N integers, indicating A1, A2 ...AN.
> + For 30% of the data：1 ≤ N ≤ 10
> + For 60% of the data：1 ≤ N ≤ 1000
> + For 100% of the data：1 ≤ N ≤ 1000000, 0 ≤ Ai ≤ 1000000000
>
> **Output**
>
> One line with an integer indicating the minimum length of the final array.
> <!--more-->
> **Sample Hint**
>
> (1,2) (3,4) (4,5) are deleted.
>
> **Sample Input**
```
    7
    1 1 2 3 4 4 5
```
> **Sample Output**
```
    1
```

At first I think the 'adjacent number' means (num,num+1) or (num, num-1), but it means the numbers in the array.

So, the problem will be another story. I come up with the simulation solution. But its complexity will be too large to pass the tests.

Then, you will find that if the array contains both odd number and even number. It must have pair to be deleted.

Then the result will be the abs(oddNum - evenNum).

The code is:

```
#include <cstdio>
#include <climits>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <cmath>
#include <iostream>
#include <sstream>
#include <algorithm>
#include <vector>
#include <set>
#include <map>
#include <unordered_map>
#include <unordered_set>
#include <bitset>
#include <stack>
#include <string>
#include <queue>
#include <list>
#include <iomanip>
#include <limits>
#include <typeinfo>
#include <functional>
#include <numeric>
#include <complex>

using namespace std;

int main() {
    int N;
    cin >> N;
    int oddNum = 0, evenNum = 0;
    for (int i = 0; i < N; i++) {
        int num; cin >> num;
        if (num % 2 == 0) {
            evenNum++;
        } else {
            oddNum++;
        }
    }

    cout << abs(evenNum - oddNum) << endl;

    return 0;
}
```

Wonderful problem.
