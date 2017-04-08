---
title: Font Size
date: 2017-02-14 14:21:49
tags:
    - Math
    - Binary Search
---

> **Description:**
>
> Steven loves reading book on his phone. The book he reads now consists of N paragraphs and the i-th paragraph contains ai characters.
>
> Steven wants to make the characters easier to read, so he decides to increase the font size of characters. But the size of Steven's phone screen is limited. Its width is W and height is H. As a result, if the font size of characters is S then it can only show ⌊W / S⌋ characters in a line and ⌊H / S⌋ lines in a page. (⌊x⌋ is the largest integer no more than x)
>
> So here's the question, if Steven wants to control the number of pages no more than P, what's the maximum font size he can set? Note that paragraphs must start in a new line and there is no empty line between paragraphs.
>
> **Input:**
>
> Input may contain multiple test cases.
>
> The first line is an integer TASKS, representing the number of test cases.
>
> For each test case, the first line contains four integers N, P, W and H, as described above.
>
> The second line contains N integers a1, a2, ... aN, indicating the number of characters in each paragraph.
>
> For all test cases,
> + 1 <= N <= 103,
> + 1 <= W, H, ai <= 103,
> + 1 <= P <= 106,
>
> There is always a way to control the number of pages no more than P.
>
> **Output**
>
> For each testcase, output a line with an integer Ans, indicating the maximum font size Steven can set.
>
<!--more-->
> + Example Input:
> ```
 2
 1 10 4 3
 10
 2 10 4 3
 10 103
```
> + Example Output:
> ```
 3
 2
```

<!--more-->

This is one problem from hihocode, it is No. 1288, and it is also one of the microsoft hiring test. So, it must be fun enough to waste time to figure it out.

It actually has fun. You should find the relationship with the Maxline and Maxwordperline.

If you read my code, you will understand quickly.

```
using namespace std;

bool checkIsOk(int pageHeight, int pageWidth, int fontSize, vector<int> wordNums, int maxPageNums) {
    int currentWordsPerLine = (int)(pageWidth / fontSize);
    int currentLinesPerPage = (int)(pageHeight / fontSize);

    int totalLineNum = currentLinesPerPage * maxPageNums;
    for (int i = 0; i < (int)wordNums.size(); i++) {
        if (totalLineNum < 0) {
            return false;
        }
        int currentLineNum = 1;
        while (wordNums[i] - (currentWordsPerLine * currentLineNum) > 0) {
            currentLineNum++;
        }
        totalLineNum = totalLineNum - currentLineNum;
    }
    return totalLineNum >= 0;
}

int main() {
    int TASKS;
    int N, P, W, H;
    while (cin >> TASKS) {
        for (int i = 0; i < TASKS; i++) {
            cin >> N >> P >> W >> H;
            vector<int> wordNums(N);
            for (int idx = 0; idx < N; idx++) {
                cin >> wordNums[idx];
            }

            int low = 1, high = W, res = -1;
            while (low <= high) {
                int mid = (low + high) / 2;
                if (checkIsOk(H, W, mid, wordNums, P)) {
                    res = max(res, mid);
                    low = mid + 1;
                } else {
                    high = mid - 1;
                }
            }
            cout << res << endl;
        }
    }

    return 0;
}
```

It gets AC.
