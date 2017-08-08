---
title: Word Ladder II
date: 2017-08-08 14:59:57
tags:
    - Array
    - BackTracking
    - Breadth-first Search
    - String
---


> Given two words (beginWord and endWord), and a dictionary's word list, find all shortest transformation sequence(s) from beginWord to endWord, such that:
>
> + Only one letter can be changed at a time
> + Each transformed word must exist in the word list. Note that beginWord is not a transformed word.
>
> **For example:**
```
Given:
beginWord = "hit"
endWord = "cog"
wordList = ["hot","dot","dog","lot","log","cog"]

Return
    [
        ["hit","hot","dot","dog","cog"],
        ["hit","hot","lot","log","cog"]
    ]
```
> **Note:**
> + Return an empty list if there is no such transformation sequence.
> + All words have the same length.
> + All words contain only lowercase alphabetic characters.
> + You may assume no duplicates in the word list.
> + You may assume beginWord and endWord are non-empty and are not the same.

<!--more-->

At first, I just use the bruce force solutin to solve the problem. With DFS, the code is like:

```
using namespace std;

class Solution {
    public:

        bool canTransfer(string startStr, string endStr) {
            int num = 0;
            for (int i = 0; i < (int)startStr.length(); i++) {
                if (startStr[i] != endStr[i]) {
                    num++;
                }
                if (num > 1) {
                    return false;
                }
            }
            return true;
        }

        int maxLen = INT_MAX;
        void dfs(int currentIdx,
                string targetStr,
                vector<string> &wordList,
                vector<bool> &visited,
                vector<string> &currentLadder,
                vector<vector<string>> &res)
        {
            if (visited[currentIdx]) {
                return;
            }

            if ((int)currentLadder.size() > maxLen) {
                return;
            }

            visited[currentIdx] = true;
            currentLadder.push_back(wordList[currentIdx]);

            if (wordList[currentIdx] == targetStr) {
                if ((int)currentLadder.size() < maxLen) {
                    res.clear();
                    vector<string> ladder(currentLadder);
                    res.push_back(ladder);
                    maxLen = currentLadder.size();
                } else if ((int)currentLadder.size() == maxLen) {
                    vector<string> ladder(currentLadder);
                    res.push_back(ladder);
                }
            } else {
                for (int i = 0; i < (int)wordList.size(); i++) {
                    if (!visited[i] && canTransfer(wordList[i], wordList[currentIdx])) {
                        dfs(i, targetStr, wordList, visited, currentLadder, res);
                    }
                }
            }

            currentLadder.pop_back();
            visited[currentIdx] = false;
        }

        vector<vector<string>> findLadders(string beginWord, string endWord, vector<string>& wordList) {
            vector<vector<string>> res;
            vector<bool> visited(wordList.size(), false);

            bool isContainEndWord = false;
            for (auto word : wordList) {
                if (word == endWord) {
                    isContainEndWord = true;
                    break;
                }
            }
            if (isContainEndWord) {
                for (int i = 0; i < (int)wordList.size(); i++) {
                    if (canTransfer(beginWord, wordList[i])) {
                        vector<string> currentLadder;
                        currentLadder.push_back(beginWord);
                        dfs(i, endWord, wordList, visited, currentLadder, res);
                    }
                }
            }

            return res;
        }
};
```

It gets TLE.

Last:

```
using namespace std;



class Solution {
    public:
        void calAdj(const string s, unordered_set<string> & dict, unordered_set<string>& adjset){
            adjset.clear();
            for( int i = 0; i < (int)s.size(); ++i){
                string tmp(s);
                for( char az = 'a'; az <= 'z'; ++az){
                    tmp[i] = az;
                    if( dict.find(tmp) != dict.end()){ //tmp is in dictionary
                        adjset.insert(tmp);
                    }
                }
            }
        }

        void pathreverse(unordered_map<string, unordered_set<string>>& pathmap, string start, vector<vector<string>>& pathlist){

            vector<string> & lastpath = pathlist[pathlist.size()-1];
            lastpath.push_back( start );
            vector<string> prepath(lastpath);

            int p = 0;
            for( auto nstr : pathmap[start] ){
                if( p > 0 )//generate new path
                    pathlist.push_back(prepath);
                pathreverse(pathmap, nstr, pathlist);
                ++p;
            }
        }

        vector<vector<string>> findLadders(string start, string end, vector<string> &wordList) {
            vector<vector<string>> pathlist;

            unordered_set<string> dict;
            for (string word: wordList) {
                dict.insert(word);
            }
            if (dict.find(end) == dict.end()) return pathlist;

            string tmp = start;
            start = end;
            end = tmp;
            int slen = start.size();
            int elen = end.size();
            if( slen != elen )
                return pathlist;

            dict.insert(start);
            dict.insert(end);

            //run bfs
            unordered_map<string, unordered_set<string>> pathmap;
            unordered_set<string> curset;
            curset.insert(start);
            dict.erase(start);
            unordered_set<string> adjset;
            bool find = false;

            while( !find && curset.size() > 0 ){
                unordered_set<string> preset(curset);
                curset.clear();
                for( auto pres : preset){
                    if( pres == end ){//find it
                        find = true;
                        pathlist.push_back(vector<string>());
                        pathreverse(pathmap, end, pathlist);
                        break;
                    }
                    calAdj(pres, dict, adjset);
                    curset.insert(adjset.begin(),adjset.end());//put in next layer
                    for( auto nexts : adjset ){
                        pathmap[nexts].insert(pres); // record its parents
                    }
                }
                for( auto vs : curset) // remove visited string
                    dict.erase(vs);
            }
            return pathlist;
        }
};
```

It gets AC.
