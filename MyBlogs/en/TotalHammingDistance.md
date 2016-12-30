Total Hamming Distance
===

> The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
>
> Now your job is to find the total Hamming distance between all pairs of the given numbers.
>
> Example:
>
> Input: 4, 14, 2
>
> Output: 6
>
> Explanation: In binary representation, the 4 is 0100, 14 is 1110, and 2 is 0010 (just
> showing the four bits relevant in this case). So the answer will be:
> HammingDistance(4, 14) + HammingDistance(4, 2) + HammingDistance(14, 2) = 2 + 2 + 2 = 6.
>
> Note:
>
>     Elements of the given array are in the range of 0 to 10^9
>     Length of the array will not exceed 10^4.
>
> Subscribe to see which companies asked this question

This is the leetcode No.477, we can quickly find a solution like this:

```
using namespace std;

class Solution {
public:
    int totalHammingDistance(vector<int>& nums) {
        int sum = 0;
        for (int i = 0; i < (int)nums.size() - 1; i++) {
            for (int j = i + 1; j < (int)nums.size(); j++) {
                sum += hamming_distance(nums[i], nums[j]);
            }
        }
        return sum;
    }

    int hamming_distance(unsigned long long x, unsigned long long y) {
        return __builtin_popcountll(x ^ y);
    }
};
```

It is correct, however it time complex is O(n^2), and the result is TLE.

So, I found a better solution here. As we can see from the question, we can find the number is int type, and no larger than 2^32 in that we use a 32 bit size bitmap. For better explaination, I use 8 bit size as example.

```
0000 0000
1110 0010
1101 0101
```

We get such an array, and we just need to figure out how many 1s in each index. Take 1st index as an example, we get one 1 bit, and the total distance for the 1st index is (3-1)*(1) which stands for (n - bitCount) * bitCount.

So, what we should do is to add the total 32 bits.

Last, here comes to a solution:

```
int totalHammingDistance(vector<int>& nums) {
    int total = 0, bitCount = 0;
    for (int idx = 0; idx < 32; idx++) {
        for (int i = 0; i < (int)nums.size(); i++) {
            bitCount += (nums[i] >> idx) & 1;
        }
        total += bitCount * (nums.size() - bitCount);
    }
    return total;
}
```

And it's time complex is O(n*32) which means O(n) and it's accepted.
