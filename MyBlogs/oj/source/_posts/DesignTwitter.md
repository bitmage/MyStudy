---
title: Design Twitter
date: 2017-06-28 17:15:09
tags:
    - Hash Table
    - System Design
---


> Design a simplified version of Twitter where users can post tweets, follow/unfollow another user and is able to see the 10 most recent tweets in the user's news feed. Your design should support the following methods:
>
> + postTweet(userId, tweetId): Compose a new tweet.
> + getNewsFeed(userId): Retrieve the 10 most recent tweet ids in the user's news feed. Each item in the news feed must be posted by users who the user followed or by the user herself. Tweets must be ordered from most recent to least recent.
> + follow(followerId, followeeId): Follower follows a followee.
> + unfollow(followerId, followeeId): Follower unfollows a followee.
>
> **Example:**
```
Twitter twitter = new Twitter();

// User 1 posts a new tweet (id = 5).
twitter.postTweet(1, 5);

// User 1's news feed should return a list with 1 tweet id -> [5].
twitter.getNewsFeed(1);

// User 1 follows user 2.
twitter.follow(1, 2);

// User 2 posts a new tweet (id = 6).
twitter.postTweet(2, 6);

// User 1's news feed should return a list with 2 tweet ids -> [6, 5].
// Tweet id 6 should precede tweet id 5 because it is posted after tweet id 5.
twitter.getNewsFeed(1);

// User 1 unfollows user 2.
twitter.unfollow(1, 2);

// User 1's news feed should return a list with 1 tweet id -> [5],
// since user 1 is no longer following user 2.
twitter.getNewsFeed(1);
```

<!--more-->

It is Leetcode No.355. It is a simple one, but the highlight of this problem is not your Accpted code. But the process you make the system.

The code is simple:

```
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/**
 * @author Mike
 * @project oj.code
 * @date 28/06/2017, 5:15 PM
 * @e-mail mike@mikecoder.cn
 */
public class Twitter {
    
    class Tweet {
        int userId;
        int tweetId;
    }
    
    private ArrayList<Tweet>                   tweetIds;
    private HashMap<Integer, HashSet<Integer>> relations;
    
    /**
     * Initialize your data structure here.
     */
    public Twitter() {
        tweetIds = new ArrayList<>();
        relations = new HashMap<>();
    }
    
    /**
     * Compose a new tweet.
     */
    public void postTweet(int userId, int tweetId) {
        Tweet tweet = new Tweet();
        tweet.tweetId = tweetId;
        tweet.userId = userId;
        
        tweetIds.add(tweet);
    }
    
    /**
     * Retrieve the 10 most recent tweet ids in the user's news feed. Each item in the news feed must be posted by users who the user followed or by the user herself. Tweets must be ordered from most recent to least recent.
     */
    public List<Integer> getNewsFeed(int userId) {
        ArrayList<Integer> res = new ArrayList<>();
        if (relations.containsKey(userId)) {
            HashSet<Integer> followeds = relations.get(userId);
            for (int idx = tweetIds.size() - 1; idx >= 0; idx--) {
                if (followeds.contains(tweetIds.get(idx).userId) || tweetIds.get(idx).userId == userId) {
                    res.add(tweetIds.get(idx).tweetId);
                }
                if (res.size() == 10) {
                    break;
                }
            }
        } else {
            for (int idx = tweetIds.size() - 1; idx >= 0; idx--) {
                if (tweetIds.get(idx).userId == userId) {
                    res.add(tweetIds.get(idx).tweetId);
                }
                if (res.size() == 10) {
                    break;
                }
            }
        }
        return res;
    }
    
    /**
     * Follower follows a followee. If the operation is invalid, it should be a no-op.
     */
    public void follow(int followerId, int followedId) {
        if (relations.containsKey(followerId)) {
            relations.get(followerId).add(followedId);
        } else {
            HashSet<Integer> followeds = new HashSet<>();
            followeds.add(followedId);
            relations.put(followerId, followeds);
        }
    }
    
    /**
     * Follower unfollows a followee. If the operation is invalid, it should be a no-op.
     */
    public void unfollow(int followerId, int followedId) {
        if (relations.containsKey(followerId)) {
            relations.get(followerId).remove(followedId);
        }
    }
}

/**
 * Your Twitter object will be instantiated and called as such:
 * Twitter obj = new Twitter();
 * obj.postTweet(userId,tweetId);
 * List<Integer> param_2 = obj.getNewsFeed(userId);
 * obj.follow(followerId,followeeId);
 * obj.unfollow(followerId,followeeId);
 */
```

It is slow but gets AC.
