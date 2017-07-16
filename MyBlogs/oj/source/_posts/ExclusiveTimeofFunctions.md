---
title: Exclusive Time of Functions
date: 2017-07-16 11:00:34
tags:
    - Tree
    - Simulation
    - System Design
---


> Given the running logs of n functions that are executed in a nonpreemptive single threaded CPU, find the exclusive time of these functions.
>
> Each function has a unique id, start from 0 to n-1. A function may be called recursively or by another function.
>
> A log is a string has this format : function_id:start_or_end:timestamp. For example, "0:start:0" means function 0 starts from the very beginning of time 0. "0:end:0" means function 0 ends to the very end of time 0.
>
> Exclusive time of a function is defined as the time spent within this function, the time spent by calling other functions should not be considered as this function's exclusive time. You should return the exclusive time of each function sorted by their function id.
>
> **Example 1:**
```
Input:
    n = 2
    logs =
            [
                "0:start:0",
                "1:start:2",
                "1:end:5",
                "0:end:6"
            ]
Output:
    [3, 4]
Explanation:
    Function 0 starts at time 0, then it executes 2 units of time and reaches the end of time 1.
    Now function 0 calls function 1, function 1 starts at time 2, executes 4 units of time and end at time 5.
    Function 0 is running again at time 6, and also end at the time 6, thus executes 1 unit of time.
    So function 0 totally execute 2 + 1 = 3 units of time, and function 1 totally execute 4 units of time.
```
> **Note:**
> + Input logs will be sorted by timestamp, NOT log id.
> + Your output should be sorted by function id, which means the 0th element of your output corresponds to the exclusive time of function 0.
> + Two functions won't start or end at the same time.
> + Functions could be called recursively, and will always end.
> + 1 <= n <= 100

<!--more-->

This is Leetcode No.636. I think the most important thing to solve this problem is to understand the order of tasks running.

At first, I think I should count every subtask running time first, but I just need to calculate the first level subtasks.

So, I make the log tree first and calaculate them one by one.

```
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author Mike
 * @project oj.code
 * @date 16/07/2017, 9:37 AM
 * @e-mail mike@mikecoder.cn
 */
public class Solution {

    class Task {
        int id;
        int startTime;
        int endTime;
        int             totalTime  = -1;
        ArrayList<Task> nextTasks  = new ArrayList<>();
        Task            parentTask = null;

        Task(int id, int startTime) {
            this.id = id;
            this.startTime = startTime;
        }
    }

    public int[] exclusiveTime(int n, List<String> logs) {
        int res[] = new int[n];
        Task rootTask = new Task(-1, -1);
        calcTask(rootTask, null, 0, logs);
        countTime(rootTask);
        addRes(rootTask, res);
        return res;
    }

    private void addRes(Task task, int res[]) {
        if (task.id != -1) {
            res[task.id] += task.totalTime;
        }
        for (int i = 0; i < task.nextTasks.size(); i++) {
            addRes(task.nextTasks.get(i), res);
        }
    }

    private void countTime(Task currentTask) {
        currentTask.totalTime = currentTask.endTime - currentTask.startTime + 1;
        if (currentTask.nextTasks.size() != 0) {
            for (int i = 0; i < currentTask.nextTasks.size(); i++) {
                currentTask.totalTime = currentTask.totalTime - (currentTask.nextTasks.get(i).endTime - currentTask.nextTasks.get(i).startTime + 1);
                countTime(currentTask.nextTasks.get(i));
            }
        }
    }

    private void calcTask(Task currentTask, Task parentTask, int idx, List<String> logs) {
        if (idx == logs.size()) {
            return;
        }

        String log = logs.get(idx);
        int logInfo[] = parse(log);
        if (log.contains("start")) {
            Task newTask = new Task(logInfo[0], logInfo[1]);
            newTask.parentTask = currentTask;
            currentTask.nextTasks.add(newTask);
            calcTask(newTask, currentTask, idx + 1, logs);
        } else {
            currentTask.endTime = logInfo[1];
            calcTask(parentTask, parentTask.parentTask, idx + 1, logs);
        }
    }

    private int[] parse(String log) {
        int logId = Integer.valueOf(log.substring(0, log.indexOf(":")));
        int timeStamp;
        if (log.contains("start")) {
            timeStamp = Integer.valueOf(log.substring(log.indexOf("t:") + 2));
        } else {
            timeStamp = Integer.valueOf(log.substring(log.indexOf("d:") + 2));
        }
        int res[] = new int[2];
        res[0] = logId;
        res[1] = timeStamp;

        return res;
    }

    // 1 ["0:start:0","0:start:1","0:start:2","0:end:3","0:end:4","0:end:5"]

    public static void main(String[] args) {
        Solution solution = new Solution();
        ArrayList<String> logs = new ArrayList<>();
        logs.add("0:start:0");
        logs.add("0:start:1");
        logs.add("0:start:2");
        logs.add("0:end:3");
        logs.add("0:end:4");
        logs.add("0:end:5");

        System.out.println(Arrays.toString(solution.exclusiveTime(1, logs)));
    }
}
```

It gets AC.
