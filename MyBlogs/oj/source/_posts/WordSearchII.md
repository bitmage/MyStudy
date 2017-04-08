---
title: Word Search II
date: 2017-04-04 10:42:50
tags:
    - Trie
    - Backtracking
    - Depth-first Search
---

> Given a 2D board and a list of words from the dictionary, find all words in the board.
>
> Each word must be constructed from letters of sequentially adjacent cell, where "adjacent" cells are those horizontally or vertically neighboring. The same letter cell may not be used more than once in a word.
>
> For example,
> Given words = ["oath","pea","eat","rain"] and board =
> ```
[
    ['o','a','a','n'],
    ['e','t','a','e'],
    ['i','h','k','r'],
    ['i','f','l','v']
]
```
> Return ["eat","oath"].
>
<!--more-->
> Note:
> You may assume that all inputs are consist of lowercase letters a-z.

This is leetcode No.212. It is a extended problem of "Word Search". The different point is that you should try your best to reduce the times you compare the words.

So, I prefer to use Trie tree to solve this problem.

The following code is to create a Trie Tree.
```
void buildTree(Node &parent, int idx, string str) {
    if (idx == (int)str.length()) {
        return;
    }
    if (parent.nexts.find(str[idx]) == parent.nexts.end()) {
        Node node;
        map<char, Node> nexts;
        node.nexts = nexts;
        node.ch = str[idx];
        node.word = str;
        parent.nexts.insert(pair<char, Node>(str[idx], node));
    }
    buildTree(parent.nexts.find(str[idx])->second, idx + 1, str);
}
```

And, what I should do next is to use DFS to search in the total board.

```
using namespace std;

struct Node {
    char ch;
    map<char, Node> nexts;
    string word;
};

class Solution {
    public:
        set<string> res;
        set<string> targets;
        vector<string> findWords(vector<vector<char> >& board, vector<string>& words) {
            sort(words.begin(), words.end());

            vector<string> result;
            if (words.size() == 0) {
                return result;
            }
            res.clear();

            Node root;
            root.ch = '0';
            map<char, Node> nexts;
            root.nexts = nexts;
            root.word = "";

            for (auto word : words) {
                targets.insert(word);
                buildTree(root, 0, word);
            }

            // display(root);

            for (int idx = 0; idx < (int)board.size(); idx++) {
                for (int idy = 0; idy < (int)board[0].size(); idy++) {
                    vector<vector<bool> > visited;
                    for (int i = 0; i < (int)board.size(); i++) {
                        vector<bool> level(board[0].size(), false);
                        visited.push_back(level);
                    }
                    findWords(board, visited, idx, idy, root, 0);
                }
            }

            for (auto i : res) {
                if (i != "") {
                    result.push_back(i);
                }
            }
            return result;
        }

        void findWords(vector<vector<char> > &board, vector<vector<bool> > &visited, int idx, int idy, Node current, int len) {
            if (current.nexts.size() == 0) {
                res.insert(current.word);
                return;
            } else if (len == (int)current.word.length()) {
                res.insert(current.word);
            }
            if (idx < 0 || idx >= (int)board.size() || idy < 0 || idy >= (int)board[0].size()) {
                return;
            }
            if (visited[idx][idy] == true) {
                return;
            }
            if (current.nexts.find(board[idx][idy]) == current.nexts.end()) {
                return;
            } else {
                visited[idx][idy] = true;
                findWords(board, visited, idx + 1, idy, current.nexts.find(board[idx][idy])->second, len + 1);
                findWords(board, visited, idx - 1, idy, current.nexts.find(board[idx][idy])->second, len + 1);
                findWords(board, visited, idx, idy + 1, current.nexts.find(board[idx][idy])->second, len + 1);
                findWords(board, visited, idx, idy - 1, current.nexts.find(board[idx][idy])->second, len + 1);
                visited[idx][idy] = false;
            }
        }

        void buildTree(Node &parent, int idx, string str) {
            if (idx == (int)str.length()) {
                return;
            }
            if (parent.nexts.find(str[idx]) == parent.nexts.end()) {
                Node node;
                map<char, Node> nexts;
                node.nexts = nexts;
                node.ch = str[idx];
                node.word = str;
                parent.nexts.insert(pair<char, Node>(str[idx], node));
            }
            buildTree(parent.nexts.find(str[idx])->second, idx + 1, str);
        }

        void display(Node node) {
            for (auto i : node.nexts) {
                cout << i.first << ':' << i.second.word << endl;
                display(i.second);
            }
        }
};
```

But it gets TLE.

So, I try to reduce the time. Then the code becomes:

```
using namespace std;

class TrieNode{
    public:
        bool is_end;
        vector<TrieNode*> children;
        TrieNode(){
            is_end=false;
            children=vector<TrieNode*>(26, NULL);
        }
};

class Trie{
    public:
        TrieNode* getRoot(){return root;}
        Trie(vector<string>& words){
            root=new TrieNode();
            for(int i=0; i<words.size(); ++i)
                addWord(words[i]);
        }
        void addWord(const string& word){
            TrieNode* cur=root;
            for(int i=0; i<word.size(); ++i){
                int index=word[i]-'a';
                if(cur->children[index]==NULL)
                    cur->children[index]=new TrieNode();
                cur=cur->children[index];
            }
            cur->is_end=true;
        }
    private:
        TrieNode* root;
};

class Solution {
    public:
        vector<string> findWords(vector<vector<char>>& board, vector<string>& words) {
            Trie* trie = new Trie(words);
            TrieNode* root=trie->getRoot();
            set<string> result_set;
            for(int x=0; x<board.size(); ++x)
                for(int y=0; y<board[0].size(); ++y)
                    findWords(board, x, y, root, "", result_set);

            vector<string> result;
            for(auto it:result_set)    result.push_back(it);
            return result;
        }
    private:
        void findWords(vector<vector<char>>& board, int x, int y, TrieNode* root, string word, set<string>& result){
            if(x<0||x>=board.size()||y<0||y>=board[0].size() || board[x][y]==' ') return;

            if(root->children[board[x][y]-'a'] != NULL){
                word=word+board[x][y];
                root=root->children[board[x][y]-'a'];
                if(root->is_end) result.insert(word);
                char c=board[x][y];
                board[x][y]=' ';
                findWords(board, x+1, y, root, word, result);
                findWords(board, x-1, y, root, word, result);
                findWords(board, x, y+1, root, word, result);
                findWords(board, x, y-1, root, word, result);
                board[x][y]=c;
            }
        }
};
```

It gets AC. What a complicated problem.
