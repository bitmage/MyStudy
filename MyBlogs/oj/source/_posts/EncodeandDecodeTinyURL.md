---
title: Encode and Decode Tiny URL
date: 2017-03-04 20:30:08
tags:
    - String
---

> TinyURL is a URL shortening service where you enter a URL such as `https://leetcode.com/problems/design-tinyurl` and it returns a short URL such as `http://tinyurl.com/4e9iAk`.
>
> Design the encode and decode methods for the TinyURL service. There is no restriction on how your encode/decode algorithm should work. You just need to ensure that a URL can be encoded to a tiny URL and the tiny URL can be decoded to the original URL.
>
> Note: Do not use class member/global/static variables to store states. Your encode and decode algorithms should be stateless.

<!--more-->

This is Leetcode No.535. This is a open-mind problem. You can just use the following code to AC:

```
class Solution {
    public:
        string encode(string longUrl) {
            return longUrl;
        }

        string decode(string shortUrl) {
            return shortUrl;
        }
};
```

However, this is not a good solution. You can remember the Hamming code. But here we don't use the function.

So, I use this code to AC. But it is still not a good solution. I will write a blog to discuss this problem.

```
using namespace std;

class Solution {
    public:
        map<string, string> urls;

        string hash(string url) {
            long long hash  = 0;
            for (int i = 0; i < (int)url.length(); i++) {
                hash = hash * 10 + url[i];
            }
            return to_string(hash);
        }

        string encode(string longUrl) {
            string key = hash(longUrl);
            urls.insert(pair<string, string>(key, longUrl));
            return key;
        }

        string decode(string shortUrl) {
            return urls.find(shortUrl)->second;
        }
};

```

Here I just use a hash function to make sure every url returns a different hash code.
