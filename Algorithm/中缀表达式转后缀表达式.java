
/***********************************************************
 * 中缀表达式转后缀表达式
 * 1. 任何一元运算符		第一优先			6
 * 2. * / %				第二优先			5
 * 3. + -				第三优先			4
 * 4. == != < > ...		第四优先			3	
 * 5. Not				第五优先			2
 * 6. && || 			第六优先			1
 * 7. = 				第七优先			0
 * @return 一个后缀表达式
 * (1)若ch为数字,将后续的所有数字均依次存入数组exp中,并以字符“ ”标志数值串结束。
 * (2)若ch为左括弧“(”,则将此括弧入栈op。
 * (3)若ch为右括弧“)”,则将栈op中左括弧“(”以前的字符依次删除并存入数组exp中,然后将左括弧“(”删除。
 * (4)若ch为“+”或“-”,则将当前栈op中“(”以前的所有字符(运算符)依次删除并存入数组exp中,然后将ch入栈op中。
 * (5)若ch为“*”或“/”,则将当前栈op中的栈顶端连续的“*”或“/”删除并依次存入数组exp中,然后将ch入栈op中。
 * (6)若字符串str扫描完毕,则将栈op中的所有运算符依次删除并存入数组exp中,然后再将ch存入数组exp中,最后可得到表达式的后缀表示在数组exp中。
 **********************************************************/

public static Queue<String> in2post(Queue<String> in) {
	Queue<String> post = new LinkedList<String>();
	Stack<String> op = new Stack<String>();
	while (!in.isEmpty()) {
		String current = in.poll();
		if (current.equals("+") || current.equals("-")) {
			if (!op.isEmpty() && !op.peek().equals("(")) {
				while (!op.isEmpty() 
						&& !op.peek().equals("(")){
					post.add(op.pop());
				}
				op.add(current);
			}else {
				op.add(current);
			}
		}else if (current.equals("*") || current.equals("/")) {
			while (!op.isEmpty() 
					&& (op.peek().equals("*") || op.peek().equals("/"))){
				post.add(op.pop());
			}
			op.add(current);
		}else if (current.equals("(")) {
			op.add(current);
			//Do nothing
		}else if (current.equals(")")) {
			while (!op.isEmpty() 
					&& op.peek().equals("(")) {
				post.add(op.pop());
			}
			post.add(op.pop());
			op.pop();
		}else {
			//这边就是数字，直接放入队列里
			post.add(current);
		}
	}
	//已经到头了
	while (!op.isEmpty()) {
		post.add(op.pop());
	}
	return post;
}