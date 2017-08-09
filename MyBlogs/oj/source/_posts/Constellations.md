---
title: Constellations
date: 2017-08-09 13:21:19
tags:
    - Enumeration
---

> **Description**
>
> Recently Little Hi started to like astronomy and downloaded the pictures of K constellations. He wonders how many of them he can spot in the night?
>
> **Input**
>
> + Line 1: K(1 <= K <= 20), the number of constellations.
> + K constellation pictures follow. The format of each picture is:
> + Line 1 of each picture: H and W(5 <= H, W, <= 100), the height and width of the picture.
> + Line 2~H+1 of each picture: An H*W matrix of characters representing the picture of a constellation. Each line contains W characters. '#' for a star and '.' for empty area. There are no more than 20 stars in each constellation.
> + After K constellations is the sky Little Hi looks to in the night.
> + Line 1 of sky: N and M(100 <= N, M <= 1000), the size of the sky Little Hi looks to.
> + Line 2~N of sky: An N*M matrix of characters representing the sky Little Hi looks to. Each line contains M characters. '#' for a star and '.' for empty area. There are no more than 5000 stars in the sky.
>
> **Output**
>
> For each constellation in the Input output "Yes" or "No" indicating whether Little Hi can spot the constellation in the sky.
> All pictures of constellations and the sky Little Hi looks to are in the same direction so there is no need to rotate the pictures.
>
> **Hint**
>
> A constellation can be spoted if and only if all stars in the constellation can be matched in the sky. It is allowed that two spoted constellations share common stars.
>
> <!--more-->
> **Sample Input**
```
    3
    5 5
    #....
    .....
    ...#.
    .....
    .#...
    5 5
    ....#
    .....
    .....
    #....
    ....#
    5 6
    .....#
    ......
    #.....
    ......
    ....#.
    10 10
    .......#..
    ..........
    ..#.......
    ..........
    ......#...
    ..........
    ..........
    ..#.......
    ......#...
    ..........
```
> **Sample Output**
```
    No
    Yes
    Yes
```

Easy one, the hardest part is to understand that not all the star should be the same as the space.

```
using namespace std;

bool checkStar(vector<vector<char>> &space, int idx, int idy, vector<vector<char>> &star) {
    if (idx + star.size() > space.size() || idy + star[0].size() > space[0].size()) {
        return false;
    }
    for (int x = 0; x < (int)star.size(); x++) {
        for (int y = 0; y < (int)star[0].size(); y++) {
            if (space[idx + x][idy + y] == '.' && '#' == star[x][y]) {
                return false;
            }
        }
    }
    return true;
}

vector<vector<char>> compact(vector<vector<char>> &origin, int minIdx, int maxIdx, int minIdy, int maxIdy) {
    vector<vector<char>> newone(maxIdx - minIdx + 1, vector<char>(maxIdy - minIdy + 1));
    for (int idx = minIdx; idx <= maxIdx; idx++) {
        for (int idy = minIdy; idy <= maxIdy; idy++) {
            newone[idx - minIdx][idy - minIdy] = origin[idx][idy];
        }
    }
    return newone;
}

int main() {
    // freopen("./P1099.txt","r",stdin);
    int K;
    while (cin >> K) {
        vector<vector<vector<char>>> stars;
        for (int i = 0; i < K; i++) {
            int H, W;
            cin >> H >> W;
            vector<vector<char>> star(H, vector<char>(W));
            int minIdx = INT_MAX, minIdy = INT_MAX, maxIdx = INT_MIN, maxIdy = INT_MIN;
            for (int x = 0; x < H; x++) {
                for (int y = 0; y < W; y++) {
                    cin >> star[x][y];
                    if (star[x][y] == '#') {
                        minIdx = min(minIdx, x);
                        maxIdx = max(maxIdx, x);
                        minIdy = min(minIdy, y);
                        maxIdy = max(maxIdy, y);
                    }
                }
            }
            stars.push_back(compact(star, minIdx, maxIdx, minIdy, maxIdy));
        }

        int H, W;
        cin >> H >> W;
        vector<vector<char>> space(H, vector<char>(W));
        for (int x = 0; x < H; x++) {
            for (int y = 0; y < W; y++) {
                cin >> space[x][y];
            }
        }


        vector<bool> res(K, false);
        for (int starIdx = 0; starIdx < K; starIdx++) {
            for (int idx = 0; !res[starIdx] && idx < (int)(space.size()); idx++) {
                for (int idy = 0; !res[starIdx] && idy < (int)(space[0].size()); idy++) {
                    if (checkStar(space, idx, idy, stars[starIdx])) {
                        res[starIdx] = true;
                        break;
                    }
                }
            }
        }

        for (auto isFind : res) {
            if (isFind) {
                cout << "Yes" << endl;
            } else {
                cout << "No" << endl;
            }
        }
    }
    return 0;
}
```

It gets AC.
