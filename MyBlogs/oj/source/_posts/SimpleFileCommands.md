---
title: Simple File Commands
date: 2017-05-27 20:21:21
tags:
    - Heap
    - Hash Table
---


> Alice is writing a program that performs the following terminal commands:
> + crt file_name
>   + Create a file named.
>   + If is already in use, then append (x) to it where is the lowest positive integer such that the file doesn't already exist. For example, crt a creates file a(2) if a and a(1) already exist.
>   + Print + new_file on a new line, where is the new file's name.
> + del file_name
>   + Delete the file named .
>   + Print - file_name on a new line, where is the deleted file's name.
> + rnm file_name1 file_name2
>   + Find the file called and change the name to (Follow point of crt command in case of conflict). For the purpose of simplification, you can think this operation as deleting the first file and creating the second file.
>   + Print r file_name1 -> new_file on a new line, where is the new file's name.
>
> Assume that the user won't attempt to create a file which contains anything other than lowercase English letters.
>
> Given commands, execute each command in order.
>
> **Input Format**
>
> The first line contains an integer, , denoting the number of commands.
> Each of the subsequent lines contains a command in the format defined above.
>
> **Constraints**
>
> + The given name string for any file to be created consists of a maximum of lowercase English letters.
> + It's guaranteed that the del and rnm operations will only attempt to delete or rename files that exist.
>
> **Output Format**
>
> For each command, print the appropriate output per the instructions above.
><!--more-->
> **Example**
```
Sample Input

11
crt phonebook
crt phonebook
crt phonebook
crt todo
crt phonebook
del phonebook
del phonebook(2)
crt phonebook
crt phonebook
crt phonebook
rnm phonebook(2) todo

Sample Output 0

+ phonebook
+ phonebook(1)
+ phonebook(2)
+ todo
+ phonebook(3)
- phonebook
- phonebook(2)
+ phonebook
+ phonebook(2)
+ phonebook(4)
r phonebook(2) -> todo(1)
```

This is one problem of World CodeSprint 11 which I think with fun.

First, you can quickly find a hashmap solution. using a hashmap to store the filenames with the numbers appended.

Just like:
```
public class Solution {

    static String generateFileName(int idx, String filename) {
        if (idx == 0) return filename;
        return filename + "(" + idx + ")";
    }

    public static void _main(String[] args) {
        Scanner in = new Scanner(System.in);
        int q = in.nextInt();

        HashSet<String> files = new HashSet<>();

        for (int a0 = 0; a0 < q; a0++) {
            String command = in.next();
            String filename = in.next();

            switch (command) {
                case "crt": {
                    int idx = 0;
                    while (files.contains(generateFileName(idx, filename))) {
                        idx++;
                    }
                    files.add(generateFileName(idx, filename));
                    System.out.println("+ " + generateFileName(idx, filename));
                    break;
                }
                case "del": {
                    if (files.contains(filename)) {
                        files.remove(filename);
                        System.out.println("- " + filename);
                    }
                    break;
                }
                case "rnm": {
                    String newname = in.next();
                    if (files.contains(filename)) {
                        files.remove(filename);
                        int idx = 0;
                        while (files.contains(generateFileName(idx, newname))) {
                            idx++;
                        }
                        files.add(generateFileName(idx, newname));
                        System.out.println("r " + filename + " -> " + generateFileName(idx, newname));
                    }
                    break;
                }
            }
        }
    }
}
```

It is simple and easy to understand. But the time complexity is larger when search whether this filename has been used?

So, you can use a class to store the currentIdx and the available indexes, like:

```
public class Solution {

    static class lists {
        int currentIdx = 0;
        PriorityQueue<Integer> available;
    }

    static String generateFileName(int idx, String filename) {
        if (idx == 0) return filename;
        return filename + "(" + idx + ")";
    }

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int q = in.nextInt();

        HashMap<String, lists> files = new HashMap<>();

        for (int a0 = 0; a0 < q; a0++) {
            String command = in.next();
            String filename = in.next();

            switch (command) {
                case "crt": {
                    int currentIdx = 0;
                    if (!files.containsKey(filename)) {
                        lists lists = new lists();
                        lists.available = new PriorityQueue<>();
                        lists.currentIdx = currentIdx;
                        files.put(filename, lists);
                    } else {
                        lists newfile = files.get(filename);
                        if (newfile.available.size() == 0) {
                            currentIdx = newfile.currentIdx + 1;
                            files.get(filename).currentIdx++;
                        } else {
                            currentIdx = files.get(filename).available.poll();
                        }
                    }
                    System.out.println("+ " + generateFileName(currentIdx, filename));
                    break;
                }
                case "del": {
                    int idx = 0;
                    if (filename.contains("(")) {
                        idx = Integer.valueOf(filename.substring(filename.indexOf('(') + 1, filename.indexOf(')')));
                        filename = filename.substring(0, filename.indexOf('('));
                    }
                    files.get(filename).available.add(idx);
                    System.out.println("- " + generateFileName(idx, filename));
                    break;
                }
                case "rnm": {
                    int idx = 0;
                    if (filename.contains("(")) {
                        idx = Integer.valueOf(filename.substring(filename.indexOf('(') + 1, filename.indexOf(')')));
                        filename = filename.substring(0, filename.indexOf('('));
                    }
                    files.get(filename).available.add(idx);

                    String movedFile = in.next();
                    int currentIdx = 0;
                    if (!files.containsKey(movedFile)) {
                        lists lists = new lists();
                        lists.available = new PriorityQueue<>();
                        lists.currentIdx = currentIdx;
                        files.put(movedFile, lists);
                    } else {
                        lists newfile = files.get(movedFile);
                        if (newfile.available.size() == 0) {
                            currentIdx = newfile.currentIdx + 1;
                            files.get(movedFile).currentIdx++;
                        } else {
                            currentIdx = files.get(movedFile).available.poll();
                        }
                    }
                    System.out.println("r " + generateFileName(idx, filename) + " -> " + generateFileName(currentIdx, movedFile));
                    break;
                }
            }
        }
    }
}
```

It gets AC.
