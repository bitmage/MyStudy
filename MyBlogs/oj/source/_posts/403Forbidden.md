---
title: 403 Forbidden
date: 2017-02-15 13:15:56
tags:
    - Array
    - Trie
    - Hash Table
---


> **Description**
> Little Hi runs a web server. Sometimes he has to deny access from a certain set of malicious IP addresses while his friends are still allow to access his server. To do this he writes N rules in the configuration file which look like:
> ```
allow 1.2.3.4/30
deny 1.1.1.1
allow 127.0.0.1
allow 123.234.12.23/3
deny 0.0.0.0/0
```
> Each rule is in the form: allow | deny address or allow | deny address/mask.
>
> When there comes a request, the rules are checked in sequence until the first match is found. If no rule is matched the request will be allowed. Rule and request are matched if the request address is the same as the rule address or they share the same first mask digits when both written as 32bit binary number.
>
> For example IP "1.2.3.4" matches rule "allow 1.2.3.4" because the addresses are the same. And IP "128.127.8.125" matches rule "deny 128.127.4.100/20" because 10000000011111110000010001100100 (128.127.4.100 as binary number) shares the first 20 (mask) digits with 10000000011111110000100001111101 (128.127.8.125 as binary number).
>
> Now comes M access requests. Given their IP addresses, your task is to find out which ones are allowed and which ones are denied.
>
> **Input**
>
> + Line 1: two integers N and M.
> + Line 2-N+1: one rule on each line.
> + Line N+2-N+M+1: one IP address on each line.
> + All addresses are IPv4 addresses(0.0.0.0 - 255.255.255.255). 0 <= mask <= 32.
> + For 40% of the data: 1 <= N, M <= 1000.
> + For 100% of the data: 1 <= N, M <= 100000.
>
> **Output**
>
> For each request output "YES" or "NO" according to whether it is allowed.
>
<!--more-->
>
> ** Sample Input**
> ```
5 5
allow 1.2.3.4/30
deny 1.1.1.1
allow 127.0.0.1
allow 123.234.12.23/3
deny 0.0.0.0/0
1.2.3.4
1.2.3.5
1.1.1.1
100.100.100.100
219.142.53.100
```
> **Sample Output**
> ```
YES
YES
NO
YES
NO
 ```
<!--more-->

It is one of the Microsoft 2016 Campus Hiring Contest - April. It is fun and it is such a problem to test our basic programming skills.

I just find that Java may be a better language to solve this problem. So I use Java to deal with this problem.

It's complex and easy to get 40% data.

```
import java.util.Scanner;
import java.util.Vector;

public class P1289 {

    static class Rule {
        public String  address;
        public boolean isAllowed;

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;

            Rule address1 = (Rule) o;

            if (isAllowed != address1.isAllowed) return false;
            return address != null ? address.equals(address1.address) : address1.address == null;
        }

        @Override
        public int hashCode() {
            int result = address != null ? address.hashCode() : 0;
            result = 31 * result + (isAllowed ? 1 : 0);
            return result;
        }
    }

    public static String append8bit(String binary) {
        switch (binary.length()) {
            case 0:
                return "00000000";
            case 1:
                return "0000000" + binary;
            case 2:
                return "000000" + binary;
            case 3:
                return "00000" + binary;
            case 4:
                return "0000" + binary;
            case 5:
                return "000" + binary;
            case 6:
                return "00" + binary;
            case 7:
                return "0" + binary;
            default:
                return binary;
        }
    }

    public static String ip2str(String ip) {
        StringBuilder stringBuilder = new StringBuilder(32);
        String res = null;
        String[] parts = ip.split("\\.");

        stringBuilder.append(append8bit(Integer.toBinaryString(Integer.valueOf(parts[0]))));
        stringBuilder.append(append8bit(Integer.toBinaryString(Integer.valueOf(parts[1]))));
        stringBuilder.append(append8bit(Integer.toBinaryString(Integer.valueOf(parts[2]))));
        if (parts[3].contains("/")) {
            String[] ip_mask = parts[3].split("/");
            stringBuilder.append(append8bit(Integer.toBinaryString(Integer.valueOf(ip_mask[0]))));
            res = stringBuilder.substring(0, Integer.valueOf(ip_mask[1]));
        } else {
            stringBuilder.append(append8bit(Integer.toBinaryString(Integer.valueOf(parts[3]))));
            res = stringBuilder.toString();
        }
        return res;
    }

    public static boolean check(String address, Vector<Rule> rules) {
        for (int i = 0; i < rules.size(); i++) {
            if (address.startsWith(rules.get(i).address)) {
                return rules.get(i).isAllowed;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int M, N;
        while (scanner.hasNext()) {
            N = scanner.nextInt();
            M = scanner.nextInt();
            scanner.nextLine();
            Vector<Rule> rules = new Vector<Rule>(N);
            for (int i = 0; i < N; i++) {
                String ruleStr = scanner.nextLine();
                Rule rule = new Rule();
                if (ruleStr.startsWith("a")) {
                    ruleStr = ruleStr.substring(6);
                    rule.isAllowed = true;
                    rule.address = ip2str(ruleStr);
                } else {
                    ruleStr = ruleStr.substring(5);
                    rule.isAllowed = false;
                    rule.address = ip2str(ruleStr);
                }
                rules.add(rule);
            }

            for (int i = 0; i < M; i++) {
                String IP = ip2str(scanner.nextLine());
                if (check(IP, rules)) {
                    System.out.println("YES");
                } else {
                    System.out.println("NO");
                }
            }
        }
    }
}
```

It passed 40% data. And I think if I want to pass the total data, I should do something better, like combining the rules.

I will check the better solution later.
