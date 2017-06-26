---
title: Design Excel Sum Formula
date: 2017-06-26 21:44:11
tags:
    - Depth-first Search
    - System Design
---

> Your task is to design the basic function of Excel and implement the function of sum formula. Specifically, you need to implement the following functions:
>
> Excel(int H, char W): This is the constructor. The inputs represents the height and width of the Excel form. H is a positive integer, range from 1 to 26. It represents the height. W is a character range from 'A' to 'Z'. It represents that the width is the number of characters from 'A' to W. The Excel form content is represented by a height * width 2D integer array C, it should be initialized to zero. You should assume that the first row of C starts from 1, and the first column of C starts from 'A'.
>
> void Set(int row, char column, int val): Change the value at C(row, column) to be val.
>
> int Get(int row, char column): Return the value at C(row, column).
>
> int Sum(int row, char column, List of Strings : numbers): This function calculate and set the value at C(row, column), where the value should be the sum of cells represented by numbers. This function return the sum result at C(row, column). This sum formula should exist until this cell is overlapped by another value or another sum formula.
>
> numbers is a list of strings that each string represent a cell or a range of cells. If the string represent a single cell, then it has the following format : ColRow. For example, "F7" represents the cell at (7, F).
>
> If the string represent a range of cells, then it has the following format : ColRow1:ColRow2. The range will always be a rectangle, and ColRow1 represent the position of the top-left cell, and ColRow2 represents the position of the bottom-right cell.
>
> **Example 1:**
```
Excel(3,"C");
// construct a 3*3 2D array with all zero.
//   A B C
// 1 0 0 0
// 2 0 0 0
// 3 0 0 0

Set(1, "A", 2);
// set C(1,"A") to be 2.
//   A B C
// 1 2 0 0
// 2 0 0 0
// 3 0 0 0

Sum(3, "C", ["A1", "A1:B2"]);
// set C(3,"C") to be the sum of value at C(1,"A") and the values sum of the rectangle range whose top-left cell is C(1,"A") and bottom-right cell is C(2,"B"). Return 4.
//   A B C
// 1 2 0 0
// 2 0 0 0
// 3 0 0 4

Set(2, "B", 2);
// set C(2,"B") to be 2. Note C(3, "C") should also be changed.
//   A B C
// 1 2 0 0
// 2 0 2 0
// 3 0 0 6
```
> **Note:**
> + You could assume that there won't be any circular sum reference. For example, A1 = sum(B1) and B1 = sum(A1).
> + The test cases are using double-quotes to represent a character.
> + Please remember to RESET your class variables declared in class Excel, as static/class variables are persisted across multiple test cases. Please see here for more details.

<!--more-->

It is Leetcode No.631. This is a system design problem. So, I think using Java may be a better choice..

Here I first use Hashset to store the range of a cell. But the test case contains same item. So I change it to a Vector. Then the code gets AC.

```
import java.util.Vector;

/**
 * @author Mike
 * @project oj.code
 * @date 26/06/2017, 4:29 PM
 * @e-mail mike@mikecoder.cn
 */
public class Excel {

    class Location {
        int           value  = 0;
        Vector<Range> ranges = new Vector<>();
    }

    class Range {
        boolean isPoint;
        int     startIdx;
        int     startIdy;
        int     endIdx;
        int     endIdy;

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;

            Range range = (Range) o;

            if (isPoint != range.isPoint) return false;
            if (startIdx != range.startIdx) return false;
            if (startIdy != range.startIdy) return false;
            if (endIdx != range.endIdx) return false;
            return endIdy == range.endIdy;
        }

        @Override
        public int hashCode() {
            int result = (isPoint ? 1 : 0);
            result = 31 * result + startIdx;
            result = 31 * result + startIdy;
            result = 31 * result + endIdx;
            result = 31 * result + endIdy;
            return result;
        }
    }

    private Location locations[][];

    private int[] parseLocation(int h, char w) {
        int res[] = new int[2];
        res[0] = h - 1;
        res[1] = (int) (w - 'A' + 1) - 1;
        return res;
    }

    private int[] parseLocation(String str) {
        int idy = (int) (str.charAt(0) - 'A' + 1);
        int idx = Integer.valueOf(str.substring(1));

        int[] res = new int[2];
        res[0] = idx - 1;
        res[1] = idy - 1;
        return res;
    }

    private void setRanges(int idx, int idy, String[] strs) {
        locations[idx][idy].ranges.clear();
        locations[idx][idy].value = 0;

        for (String str : strs) {
            Range range = new Range();
            if (str.length() > 3) {
                String[] tmps = str.split(":");
                range.isPoint = false;
                int[] starts = parseLocation(tmps[0]);
                range.startIdx = starts[0];
                range.startIdy = starts[1];
                int[] ends = parseLocation(tmps[1]);
                range.endIdx = ends[0];
                range.endIdy = ends[1];
            } else {
                range.isPoint = true;
                int[] points = parseLocation(str);
                range.startIdx = points[0];
                range.startIdy = points[1];
            }
            locations[idx][idy].ranges.add(range);
        }
    }

    private int getValue(int idx, int idy) {
        if (locations[idx][idy].ranges.size() == 0) {
            return locations[idx][idy].value;
        } else {
            int sum = 0;
            for (Range range : locations[idx][idy].ranges) {
                if (range.isPoint) {
                    sum += getValue(range.startIdx, range.startIdy);
                } else {
                    for (int i = range.startIdx; i <= range.endIdx; i++) {
                        for (int j = range.startIdy; j <= range.endIdy; j++) {
                            sum += getValue(i, j);
                        }
                    }
                }
            }
            return sum;
        }
    }

    public Excel(int H, char W) {
        int size[] = parseLocation(H, W);
        this.locations = new Location[size[0] + 1][size[1] + 1];
        for (int i = 0; i <= size[0]; i++) {
            for (int j = 0; j <= size[1]; j++) {
                this.locations[i][j] = new Location();
            }
        }
    }

    public void set(int r, char c, int v) {
        int[] location = parseLocation(r, c);
        locations[location[0]][location[1]].ranges.clear();
        locations[location[0]][location[1]].value = v;
    }

    public int get(int r, char c) {
        int[] location = parseLocation(r, c);
        return getValue(location[0], location[1]);
    }

    public int sum(int r, char c, String[] strs) {
        int[] location = parseLocation(r, c);
        locations[location[0]][location[1]].ranges.clear();
        setRanges(location[0], location[1], strs);
        return getValue(location[0], location[1]);
    }


    public static void main(String[] args) {
        Excel obj = new Excel(3, 'C');
        obj.set(1, 'A', 2);
        String[] ranges = new String[2];
        ranges[0] = "A1";
        ranges[1] = "A1:B2";
        System.out.println(obj.sum(3, 'C', ranges));
        obj.set(2, 'B', 2);
        System.out.println(obj.get(3, 'C'));
    }
}
```

It gets AC. But if you want to improve its performance, you can use a DP array to store the middle values.
