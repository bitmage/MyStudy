---
title: Design In Memory File System
date: 2017-05-21 12:33:27
tags:
    - Tree
    - Hash Table
---

> Design an in-memory file system to simulate the following functions:
>
> + ls: Given a path in string format. If it is a file path, return a list that only contains this file's name. If it is a directory path, return the list of file and directory names in this directory. Your output (file and directory names together) should in lexicographic order.
> + mkdir: Given a directory path that does not exist, you should make a new directory according to the path. If the middle directories in the path don't exist either, you should create them as well. This function has void return type.
> + addContentToFile: Given a file path and file content in string format. If the file doesn't exist, you need to create that file containing given content. If the file already exists, you need to append given content to original content. This function has void return type.
> + readContentFromFile: Given a file path, return its content in string format.
>
> **Example:**
```
Input:
["FileSystem","ls","mkdir","addContentToFile","ls","readContentFromFile"]
[[],["/"],["/a/b/c"],["/a/b/c/d","hello"],["/"],["/a/b/c/d"]]
Output:
[null,[],null,null,["a"],"hello"]
```
> **Note:**
> + You can assume all file or directory paths are absolute paths which begin with / and do not end with / except that the path is just "/".
> + You can assume that all operations will be passed valid parameters and users will not attempt to retrieve file content or list a directory or file that does not exist.
> + You can assume that all directory names and file names only contain lower-case letters, and same names won't exist in the same directory.

<!--more-->

This is the last problem in the Leetcode Weekly Contest. And it is a classic system design problem instead of an algrithem problem.

So, you can use a Tree structure to store all the files and dictionaries.

The code is easy to understand, but hard to make it perfect.

```
import java.util.*;

/**
 * @author Mike
 * @project oj.code
 * @date 21/05/2017, 10:15 AM
 * @e-mail mike@mikecoder.cn
 */


public class DesignInMemoryFileSystem {

    static class FileSystem {

        class Content {
            public HashMap<String, Content> nexts    = new HashMap<String, Content>();
            public String                   contents = "";
            public String                   name     = "";

            public boolean isFile = false;

            @Override
            public String toString() {
                return "Content{" + "contents='" + contents + '\'' + ", name='" + name + '\'' + ", isFile=" + isFile + '}';
            }
        }

        private Content root;

        public FileSystem() {
            root = new Content();
            root.nexts = new HashMap<String, Content>();
        }

        ArrayList<String> dividePath(String path) {
            String[] paths = path.split("/");
            ArrayList<String> _path = new ArrayList<String>();
            for (int i = 0; i < paths.length; i++) {
                if (paths[i].length() == 0) {
                    continue;
                } else {
                    _path.add(paths[i]);
                }
            }
            return _path;
        }

        public List<String> ls(String path) {
            ArrayList<String> paths = dividePath(path);

            Content current = root;
            for (String nextPath : paths) {
                current = current.nexts.get(nextPath);
            }
            LinkedList<String> res = new LinkedList<String>();
            if (current.isFile) {
                res.add(current.name);
                return res;
            } else {
                for (Content content : current.nexts.values()) {
                    res.add(content.name);
                }
                Collections.sort(res);
                return res;
            }
        }

        public void mkdir(String path) {
            addContentToFile(path, null);
        }

        public void addContentToFile(String filePath, String content) {
            ArrayList<String> paths = dividePath(filePath);
            Content current = root;
            for (int i = 0; i < paths.size(); i++) {
                if (!current.nexts.containsKey(paths.get(i))) {
                    Content dir = new Content();
                    dir.name = paths.get(i);
                    current.nexts.put(dir.name, dir);
                }
                current = current.nexts.get(paths.get(i));
                if (i == paths.size() - 1 && content != null) {
                    current.contents += content;
                    current.isFile = true;
                }
            }
        }

        public String readContentFromFile(String filePath) {
            ArrayList<String> paths = dividePath(filePath);
            Content current = root;
            for (int i = 0; i < paths.size(); i++) {
                current = current.nexts.get(paths.get(i));
            }
            return current.contents;
        }
    }
}
```

It gets AC.
