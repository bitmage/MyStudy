---
title: Number of Distinct Islands
date: 2017-10-08 11:11:39
tags:
    - Hash Table
    - Depth-first Search
---

> Given a non-empty 2D array grid of 0's and 1's, an island is a group of 1's (representing land) connected 4-directionally (horizontal or vertical.) You may assume all four edges of the grid are surrounded by water.
>
> Count the number of distinct islands. An island is considered to be the same as another if and only if one island can be translated (and not rotated or reflected) to equal the other.
>
> **Example 1:**
```
11000
11000
00011
00011

Given the above grid map, return 1.
```
> **Example 2:**
```
11011
10000
00001
11011

Given the above grid map, return 3.

Notice that:
    11
    1
and
    1
    11
are considered different island shapes, because we do not consider reflection / rotation.
```
> **Note: **
> + The length of each dimension in the given grid does not exceed 50.

<!--more-->

The most difficult part is to find a way to descripe the shape of island.

```
import java.util.HashSet;

/**
 * @author Mike
 * @project oj.code
 * @date 08/10/2017, 9:50 AM
 * @e-mail mike@mikecoder.cn
 */
public class Solution {
    class Point {
        public int idx;
        public int idy;

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;

            Point point = (Point) o;

            if (idx != point.idx) return false;
            return idy == point.idy;
        }

        @Override
        public int hashCode() {
            int result = idx;
            result = 31 * result + idy;
            return result;
        }

        @Override
        public String toString() {
            return "{" + idx + "," + idy + '}';
        }
    }

    class Shape {
        HashSet<Point> points = new HashSet<>();

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;

            Shape shape = (Shape) o;

            return points != null ? points.equals(shape.points) : shape.points == null;
        }

        @Override
        public int hashCode() {
            return points != null ? points.hashCode() : 0;
        }

        @Override
        public String toString() {
            return "Shape{" +
                    "[" + points +
                    "]}\n";
        }
    }

    HashSet<Shape> shapes = new HashSet<>();

    void findIsland(int[][] grid, boolean[][] visited, int idx, int idy,
                    Shape currentShape, int originIdx, int originIdy)
    {
        if (idx < 0 || idx >= grid.length || idy < 0 || idy >= grid[0].length) {
            return;
        }
        if (visited[idx][idy]) {
            return;
        }

        if (grid[idx][idy] == 0) {
            return;
        }

        visited[idx][idy] = true;

        Point point = new Point();
        point.idx = idx - originIdx;
        point.idy = idy - originIdy;

        currentShape.points.add(point);

        findIsland(grid, visited, idx - 1, idy, currentShape, originIdx, originIdy);
        findIsland(grid, visited, idx + 1, idy, currentShape, originIdx, originIdy);
        findIsland(grid, visited, idx, idy - 1, currentShape, originIdx, originIdy);
        findIsland(grid, visited, idx, idy + 1, currentShape, originIdx, originIdy);
    }

    public int numDistinctIslands(int[][] grid) {
        boolean[][] visited = new boolean[grid.length][grid[0].length];
        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[0].length; j++) {
                visited[i][j] = false;
            }
        }

        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[0].length; j++) {
                if (!visited[i][j] && grid[i][j] == 1) {
                    Shape currentShape = new Shape();
                    findIsland(grid, visited, i, j, currentShape, i, j);
                    shapes.add(currentShape);
                }
            }
        }

        return shapes.size();
    }
}
```

It gets AC.
