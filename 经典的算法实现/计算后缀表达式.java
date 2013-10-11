/**********************************************************
 * @author mikecoder
 * 
 * 如果接下来的是符号，就取出之前的两个数
 * 
 **********************************************************/
public static double cal4post(Queue<String> post) {
	double result = 0;
	Stack<String> post_v = new Stack<String>();
	int size = post.size();
	for (int i = 0; i < size; i++) {
		if (post.peek().equals("+")) {
			double a = Double.valueOf(post_v.pop());
			double b = Double.valueOf(post_v.pop());
			post_v.add(String.valueOf(b + a));
			post.poll();
		}else if(post.peek().equals("-")) {
			double a = Double.valueOf(post_v.pop());
			double b = Double.valueOf(post_v.pop());
			post_v.add(String.valueOf(b - a));
			post.poll();
		}else if (post.peek().equals("*")) {
			double a = Double.valueOf(post_v.pop());
			double b = Double.valueOf(post_v.pop());
			post_v.add(String.valueOf(b * a));
			post.poll();
		}else if (post.peek().equals("/")) {
			double a = Double.valueOf(post_v.pop());
			double b = Double.valueOf(post_v.pop());
			post_v.add(String.valueOf(b / a));
			post.poll();
		}else {
			post_v.add(post.poll());
		}
	}
	result = Double.valueOf(post_v.pop());
	return result;
}