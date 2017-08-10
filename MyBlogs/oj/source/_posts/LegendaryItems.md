---
title: Legendary Items
date: 2017-08-10 16:10:08
tags:
    - Depth-first Search
    - Math
---


> **Description**
>
> Little Hi is playing a video game. Each time he accomplishes a quest in the game, Little Hi has a chance to get a legendary item.
>
> At the beginning the probability is P%. Each time Little Hi accomplishes a quest without getting a legendary item, the probability will go up Q%. Since the probability is getting higher he will get a legendary item eventually.
>
> After getting a legendary item the probability will be reset to ⌊P/(2I)⌋% (⌊x⌋ represents the largest integer no more than x) where I is the number of legendary items he already has. The probability will also go up Q% each time Little Hi accomplishes a quest until he gets another legendary item.
>
> Now Little Hi wants to know the expected number of quests he has to accomplish to get N legendary items.
>
> Assume P = 50, Q = 75 and N = 2, as the below figure shows the expected number of quests is
>
> 2*50%*25% + 3*50%*75%*100% + 3*50%*100%*25% + 4*50%*100%*75%*100% = 3.25
>
> ![legendary.png](https://media.hihocoder.com//problem_images/20170331/14909360988185.png)
>
> **Input**
>
> The first line contains three integers P, Q and N.
>
> 1 ≤ N ≤ 106, 0 ≤ P ≤ 100, 1 ≤ Q ≤ 100
>
> **Output**
>
> + Output the expected number of quests rounded to 2 decimal places.
> <!--more-->
> **Sample Input**
```
    50 75 2
```
> **Sample Output**
```
    3.25
```

At first I think it is a DFS problem, so I solve the problem with a DFS method:

```
using namespace std;

float _get(vector<float> &percents) {
    float res = percents.size() * 100;
    for (int i = 0; i < (int)percents.size(); i++) {
        res = res * percents[i] / 100;
    }
    return res;
}

int _next(int currentPercent) {
    return min(100, currentPercent);
}

float calc(int currentNum, int currentPercent, int P, int Q, int targetNum, vector<float> &percents) {
    float res = 0;
    if (currentNum == targetNum) {
        res = _get(percents);
        return res;
    } else {
        if (currentPercent == 100) {
            percents.push_back(currentPercent);
            currentPercent = (int)(P/(int)pow(2, currentNum + 1));
            res = calc(currentNum + 1, currentPercent, P, Q, targetNum, percents);
            percents.pop_back();
        } else {
            percents.push_back(100 - currentPercent);
            float dontHave = calc(currentNum, _next(currentPercent + Q), P, Q, targetNum, percents);
            percents.pop_back();

            percents.push_back(currentPercent);
            float have = calc(currentNum + 1, (int)(P/(int)pow(2, currentNum + 1)), P, Q, targetNum, percents);
            percents.pop_back();
            return dontHave + have;
        }
    }
    return res;
}

int main() {
    double P, Q, N;
    while (cin >> P >> Q >> N) {
        vector<float> percents;
        cout << ((int)(100 * calc(0, P, P, Q, N, percents)))/10000.0 << endl;
    }
    return 0;
}
```

But it gets a TLE. Without no doubt, we should find another way to sovle the problem.

For DP[i] the reset operation makes its prossiblity to become [P/2^i]%, which means it has no relationship with the previous one.

```
using namespace std;

int main() {
    int P, Q, N;
    while (cin >> P >> Q >> N) {
        float res = 0;
        for (int i = 1; i <= N; i++) {
            int currentPercent = (int)(P/(pow(2, i-1))), step = 1;
            float percentSofar = 100;
            float currentExpect = 0;
            while (true) {
                if (currentPercent >= 100) {
                    currentExpect += step * percentSofar;
                    break;
                } else {
                    currentExpect += step*percentSofar*currentPercent/100;
                    percentSofar = percentSofar/100*(100 - currentPercent);
                    currentPercent = (currentPercent + Q);
                    step++;
                }
            }
            res += currentExpect;
        }
        printf("%.2lf\n", res/100);
    }
    return 0;
}
```

It has problem but the solution is the similiar way.

```
using namespace std;

const int maxn=1e6+5;
const int INF=0x3f3f3f3f;
double ans=0;
double num[105] = {0};
int n,p,q;

int main()
{
    scanf("%d%d%d",&p,&q,&n);
    for(int pre = 0 ; pre <= 100 ; ++ pre )
    {
        int cnt = 0;
        double p1 = 1;
        while(1)
        {
            double xq = ( pre + cnt * q) / 100.0;
            if( pre + cnt * q >= 100 )
            {
                num[pre] += ( cnt + 1 ) * p1 ;
                break;
            }
            num[pre] += p1 * xq * ( cnt + 1 );
            p1 *= ( 1 - xq );
            cnt++;
        }
    }

    int pre = p;
    for(int i = 1 ; i <= n ; ++ i )
    {
        if( pre == 0 )
        {
            ans += ( n - i + 1 ) * num[0];
            break;
        }
        ans += num[pre];
        pre >>= 1;
    }

    printf("%.2lf\n",ans);
    return 0;
}
```

It is the AC code.
