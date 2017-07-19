---
title: Design Search Autocomplete System
date: 2017-07-19 10:39:58
tags:
    - System Design
    - Trie
---


> Design a search autocomplete system for a search engine. Users may input a sentence (at least one word and end with a special character '#'). For each character they type except '#', you need to return the top 3 historical hot sentences that have prefix the same as the part of sentence already typed. Here are the specific rules:
>
> + The hot degree for a sentence is defined as the number of times a user typed the exactly same sentence before.
> + The returned top 3 hot sentences should be sorted by hot degree (The first is the hottest one). If several sentences have the same degree of hot, you need to use ASCII-code order (smaller one appears first).
> + If less than 2 hot sentences exist, then just return as many as you can.
> + When the input is a special character, it means the sentence ends, and in this case, you need to return an empty list.
>
> Your job is to implement the following functions:
>
> The constructor function:
>
> AutocompleteSystem(String[] sentences, int[] times): This is the constructor. The input is historical data. Sentences is a string array consists of previously typed sentences. Times is the corresponding times a sentence has been typed. Your system should record these historical data.
>
> Now, the user wants to input a new sentence. The following function will provide the next character the user types:
>
> List<String> input(char c): The input c is the next character typed by the user. The character will only be lower-case letters ('a' to 'z'), blank space (' ') or a special character ('#'). Also, the previously typed sentence should be recorded in your system. The output will be the top 3 historical hot sentences that have prefix the same as the part of sentence already typed.
> <!--more-->
> **Example:**
```
Operation: AutocompleteSystem(["i love you", "island","ironman", "i love leetcode"], [5,3,2,2])
The system have already tracked down the following sentences and their corresponding times:
    "i love you" : 5 times
    "island" : 3 times
    "ironman" : 2 times
    "i love leetcode" : 2 times
Now, the user begins another search:

    Operation: input('i')
    Output: ["i love you", "island","i love leetcode"]
    Explanation:
        There are four sentences that have prefix "i". Among them, "ironman" and "i love leetcode" have same hot degree. Since ' ' has ASCII code 32 and 'r' has ASCII code 114, "i love leetcode" should be in front of "ironman". Also we only need to output top 3 hot sentences, so "ironman" will be ignored.

    Operation: input(' ')
    Output: ["i love you","i love leetcode"]
    Explanation:
        There are only two sentences that have prefix "i ".

    Operation: input('a')
    Output: []
    Explanation:
        There are no sentences that have prefix "i a".

    Operation: input('#')
    Output: []
    Explanation:
        The user finished the input, the sentence "i a" should be saved as a historical sentence in system. And the following input will be counted as a new search.
```
> **Note:**
> + The input sentence will always start with a letter and end with '#', and only one blank space will exist between two words.
> + The number of complete sentences that to be searched won't exceed 99. The length of each sentence including those in the historical data won't exceed 100.
> + Please use double-quote instead of single-quote when you write test cases even for a character input.
> + Please remember to RESET your class variables declared in class AutocompleteSystem, as static/class variables are persisted across multiple test cases. Please see here for more details.

Actually I like this problem. What you should do is to use a Trie Tree to store the result and begin the search:

```
import java.util.*;

/**
 * @author Mike
 * @project oj.code
 * @date 18/07/2017, 9:00 AM
 * @e-mail mike@mikecoder.cn
 */
public class AutocompleteSystem {

    class Result implements Comparable {

        String str;
        int    count;

        @Override
        public int compareTo(Object other) {
            Result _other = (Result) other;
            if (this.count != _other.count) {
                return _other.count - this.count;
            } else {
                return this.str.compareTo(_other.str);
            }
        }
    }

    class TrieNode {
        boolean                      isEnd     = false;
        char                         ch        = ' ';
        int                          count     = 0;
        HashMap<Character, TrieNode> nextNodes = new HashMap<>();

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;

            TrieNode trieNode = (TrieNode) o;

            if (ch != trieNode.ch) return false;
            if (count != trieNode.count) return false;
            return nextNodes != null ? nextNodes.equals(trieNode.nextNodes) : trieNode.nextNodes == null;
        }

        @Override
        public int hashCode() {
            int result = (int) ch;
            result = 31 * result + count;
            result = 31 * result + (nextNodes != null ? nextNodes.hashCode() : 0);
            return result;
        }

        @Override
        public String toString() {
            return "TrieNode{" + "ch=" + ch + ", count=" + count + '}';
        }
    }


    private TrieNode     rootNode;
    private TrieNode     currentNode;
    private StringBuffer currentStr;
    private StringBuffer recordStr;

    public AutocompleteSystem(String[] sentences, int[] times) {
        rootNode = new TrieNode();
        currentNode = rootNode;
        currentStr = new StringBuffer();
        recordStr = new StringBuffer();

        for (int idx = 0; idx < times.length; idx++) {
            _createTrieTree(rootNode, 0, sentences[idx], times[idx]);
        }
    }

    private void _createTrieTree(TrieNode currentNode, int idx, String str, int time) {
        if (str.length() == idx) {
            currentNode.isEnd = true;
            currentNode.count = currentNode.count + time;
            return;
        }

        if (!currentNode.nextNodes.containsKey(str.charAt(idx))) {
            TrieNode newNode = new TrieNode();
            newNode.ch = str.charAt(idx);
            currentNode.nextNodes.put(str.charAt(idx), newNode);
        }
        _createTrieTree(currentNode.nextNodes.get(str.charAt(idx)), idx + 1, str, time);
    }

    private ArrayList<Result> results = new ArrayList<>();

    private void _findNext(TrieNode currentNode, char ch) {
        results.clear();
        if (currentNode.nextNodes.containsKey(ch)) {
            _visitEnd(currentNode.nextNodes.get(ch));
            this.currentNode = currentNode.nextNodes.get(ch);
        } else {
            this.currentNode = null;
        }
    }

    private void _visitEnd(TrieNode currentNode) {
        if (currentNode.nextNodes.size() != 0) {
            for (TrieNode nextNode : currentNode.nextNodes.values()) {
                currentStr.append(nextNode.ch);
                _visitEnd(nextNode);
                currentStr.deleteCharAt(currentStr.length() - 1);
            }
        }
        if (currentNode.nextNodes.size() == 0 || currentNode.isEnd) {
            Result result = new Result();
            result.str = recordStr.toString() + currentStr.toString();
            result.count = currentNode.count;

            results.add(result);
        }
    }

    private List<String> transform() {
        ArrayList<String> res = new ArrayList<>();
        Collections.sort(results);

        for (int i = 0; i < Math.min(results.size(), 3); i++) {
            res.add(results.get(i).str);
        }

        return res;
    }

    public List<String> input(char c) {
        if (c == '#') {
            _createTrieTree(rootNode, 0, recordStr.toString(), 1);
            recordStr.delete(0, recordStr.capacity());
            currentStr.delete(0, currentStr.capacity());
            currentNode = rootNode;
            results.clear();
        } else {
            recordStr.append(c);
            if (currentNode != null) {
                _findNext(currentNode, c);
            }
        }
        return transform();
    }


    public static void main(String[] args) {
        String[] strs = new String[]{"i love you", "island", "ironman", "i love leetcode"};
        int[] times = new int[]{5, 3, 2, 2};

        AutocompleteSystem system = new AutocompleteSystem(strs, times);
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            system.input(scanner.next().charAt(0));
        }
    }
}

/**
 * Your AutocompleteSystem object will be instantiated and called as such:
 * AutocompleteSystem obj = new AutocompleteSystem(sentences, times);
 * List<String> param_1 = obj.input(c);
 */
```

It gets AC.
