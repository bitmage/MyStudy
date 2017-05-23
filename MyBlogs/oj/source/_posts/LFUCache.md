---
title: LFU Cache
date: 2017-05-23 17:04:48
tags:
    - System Design
    - Hash Table
---


> Design and implement a data structure for Least Frequently Used (LFU) cache. It should support the following operations: get and put.
>
> get(key) - Get the value (will always be positive) of the key if the key exists in the cache, otherwise return -1.
> put(key, value) - Set or insert the value if the key is not already present. When the cache reaches its capacity, it should invalidate the least frequently used item before inserting a new item. For the purpose of this problem, when there is a tie (i.e., two or more keys that have the same frequency), the least recently used key would be evicted.
>
> **Follow up:**
> Could you do both operations in O(1) time complexity?
>
> **Example:**
```
LFUCache cache = new LFUCache( 2 /* capacity */ );

cache.put(1, 1);
cache.put(2, 2);
cache.get(1);       // returns 1
cache.put(3, 3);    // evicts key 2
cache.get(2);       // returns -1 (not found)
cache.get(3);       // returns 3.
cache.put(4, 4);    // evicts key 1.
cache.get(1);       // returns -1 (not found)
cache.get(3);       // returns 3
cache.get(4);       // returns 4
```

<!--more-->

This is Leetcode No.460. It is a system design problem. And for some reason, I didn't finish this problem yesterday. So, I use two days to solve this problem.

It is not a difficult problem, but as a system desgin, you must think about many corner case. Like if your capacity is 0, how about insert any pair into your cache?

So, here is my AC code:

```
using namespace std;

class KEY {
    public:
        int key;
        int times;
        int idx;

        bool operator == (const KEY &target) const {
            return target.key == this->key;
        }
};

class LFUCache {
    private:
        map<int, int> _CACHE;
        list<KEY> keys;
        int limit;
        int idx;

    public:
        LFUCache(int capacity) {
            this->idx = 0;
            this->limit = capacity;
        }

        int get(int key) {
            this->idx++;
            if (_CACHE.find(key) != _CACHE.end()) {
                for (list<KEY>::iterator _key = keys.begin(); _key != keys.end(); _key++) {
                    if (_key->key == key) {
                        _key->times++;
                        _key->idx = this->idx;
                    }
                }
                return _CACHE.find(key)->second;
            } else {
                return -1;
            }
        }

        void put(int key, int value) {
            this->idx++;
            if (_CACHE.find(key) != _CACHE.end()) {
                _CACHE.find(key)->second = value;
                for (list<KEY>::iterator _key = keys.begin(); _key != keys.end(); _key++) {
                    if (_key->key == key) {
                        _key->idx = this->idx;
                        _key->times++;
                        return;
                    }
                }
            } else {
                if ((int)_CACHE.size() >= this->limit) {
                    int minNum = INT_MAX;
                    int minIdx = INT_MAX;
                    KEY key2Rm;

                for (list<KEY>::iterator _key = keys.begin(); _key != keys.end(); _key++) {
                        if (_key->times < minNum) {
                            minNum = _key->times;
                            minIdx = _key->idx;
                            key2Rm = *(_key);
                            continue;
                        }
                        if (_key->idx < minIdx) {
                            minIdx = _key->idx;
                            key2Rm = *(_key);
                            continue;
                        }
                    }
                    keys.remove(key2Rm);
                    _CACHE.erase(key2Rm.key);
                }

                if ((int)_CACHE.size() + 1 > this->limit) {
                    return;
                }
                KEY _key;
                _key.idx = this->idx;
                _key.times = 1;
                _key.key = key;

                keys.push_back(_key);
                _CACHE.insert(pair<int, int>(key, value));
            }
        }
};
```

Not a good solution ,the insert and the get method are both O(m).

Then I will find the both O(1) solution.

```
public class LFUCache {

    HashMap<Integer, Integer> vals;
    HashMap<Integer, Integer> counts;
    HashMap<Integer, LinkedHashSet<Integer>> lists;

    int cap;
    int min = -1;

    public LFUCache(int capacity) {
        cap = capacity;
        vals = new HashMap<>();
        counts = new HashMap<>();
        lists = new HashMap<>();
        lists.put(1, new LinkedHashSet<>());
    }

    public int get(int key) {
        if(!vals.containsKey(key))
            return -1;
        int count = counts.get(key);
        counts.put(key, count+1);
        lists.get(count).remove(key);
        if(count==min && lists.get(count).size()==0)
            min++;
        if(!lists.containsKey(count+1))
            lists.put(count+1, new LinkedHashSet<>());
        lists.get(count+1).add(key);
        return vals.get(key);
    }

    public void set(int key, int value) {
        if(cap<=0)
            return;
        if(vals.containsKey(key)) {
            vals.put(key, value);
            get(key);
            return;
        }
        if(vals.size() >= cap) {
            int evit = lists.get(min).iterator().next();
            lists.get(min).remove(evit);
            vals.remove(evit);
        }
        vals.put(key, value);
        counts.put(key, 1);
        min = 1;
        lists.get(1).add(key);
    }
}
```

With 3 hashmap, we can finally get the O(1) method, but the space is too large. If I design such a system, I will use the first one to reduce the space cost.
