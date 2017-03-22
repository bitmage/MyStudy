Java 引用传递和值传递
===

前几天有个朋友问了我个问题，就是 Java 中什么时候是值传递什么时候是引用传递。他的理解是，基本数据类型是值传递，复杂对象是引用传递。

所以就有了如下的一个测试代码：

```
public class Main {

    public static void main(String[] args) {
        int a = 0;
        Integer b = 0;

        System.out.println("int a:" + a);
        System.out.println("integer b:" + b);

        changeValue(a, b);

        System.out.println("int a:" + a);
        System.out.println("integer b:" + b);
    }

    private static void changeValue(int a, Integer b) {
        a = 1;
        b = 1;
    }
}
```

我们可以看到，main 函数中的 a, b 分别是 int 基本数据类型还有 Integer 对象。按照他的理解下来看的话，changeValue 方法执行之后，a 的值应该是 0，b 的值应该是 1. 但是事实却是两个都是 0.

所以，可以发现他之前的理解是错误的。但实际上，也可以说并没有错。因为，什么是引用，什么是值，什么是复杂对象都没有定义。

某种角度上，引用也可以算作是一个值。

我们可以看如下的两段代码:


###第一段代码
```
class Untitled {
    public static void main(String[] args) {
        int a = 0;
        System.out.println(a);
        changeValue(a);
        System.out.println(a);
    }

    static void changeValue(int a) {
        a = 1;
    }
}


Mike@Snail: ~/Desktop
$ javac Untitled.java                                                                                                                                                                                                              [19:32:07]

Mike@Snail: ~/Desktop
$ javap -c Untitled                                                                                                                                                                                                                [19:32:10]
Compiled from "Untitled.java"
class Untitled {
  Untitled();
    Code:
       0: aload_0
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: return

  public static void main(java.lang.String[]);
    Code:
       0: iconst_0
       1: istore_1
       2: getstatic     #2                  // Field java/lang/System.out:Ljava/io/PrintStream;
       5: iload_1
       6: invokevirtual #3                  // Method java/io/PrintStream.println:(I)V
       9: iload_1
      10: invokestatic  #4                  // Method changeValue:(I)V
      13: getstatic     #2                  // Field java/lang/System.out:Ljava/io/PrintStream;
      16: iload_1
      17: invokevirtual #3                  // Method java/io/PrintStream.println:(I)V
      20: return

  static void changeValue(int);
    Code:
       0: iconst_1
       1: istore_0
       2: return
}
```

###第二段代码
```
class Untitled {
    public static void main(String[] args) {
        Integer a = 0;
        System.out.println(a);
        changeValue(a);
        System.out.println(a);
    }

    static void changeValue(Integer a) {
        a = 1;
    }
}

Mike@Snail: ~/Desktop
$ javac Untitled.java                                                                                                                                                                                                              [19:32:16]

Mike@Snail: ~/Desktop
$ javap -c Untitled                                                                                                                                                                                                                [19:33:25]
Compiled from "Untitled.java"
class Untitled {
  Untitled();
    Code:
       0: aload_0
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: return

  public static void main(java.lang.String[]);
    Code:
       0: iconst_0
       1: invokestatic  #2                  // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
       4: astore_1
       5: getstatic     #3                  // Field java/lang/System.out:Ljava/io/PrintStream;
       8: aload_1
       9: invokevirtual #4                  // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      12: aload_1
      13: invokestatic  #5                  // Method changeValue:(Ljava/lang/Integer;)V
      16: getstatic     #3                  // Field java/lang/System.out:Ljava/io/PrintStream;
      19: aload_1
      20: invokevirtual #4                  // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      23: return

  static void changeValue(java.lang.Integer);
    Code:
       0: iconst_1
       1: invokestatic  #2                  // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
       4: astore_0
       5: return
}
```

我们通过阅读字节码发现 我们就可以发现一点线索，不管是 int 还是 Integer 都只是使用了 aload 和 iload 指令，熟悉 Java 的人都知道，这是压参数进入栈的时候使用的。学过一点编译原理或者操作系统的人也应该都是知道的，栈上分配的空间都是稍纵即逝的，可以理解为局部变量。也就是通俗的值传递。

然后，我们是不是就可以认为，Java 代码在处理对象的时候，就都是值传递？其实不然，看第三段代码就明了:

###第三段
```
class Untitled {

    static class T {
        int a = 0;
    }

    public static void main(String[] args) {
        T t = new T();
        System.out.println(t.a);
        changeValue(t);
        System.out.println(t.a);
    }

    static void changeValue(T a) {
        a.a = 1;
    }
}

Mike in ~/Desktop(ruby-2.2.3) λ javac Untitled.java
Mike in ~/Desktop(ruby-2.2.3) λ javap -c Untitled
Compiled from "Untitled.java"
class Untitled {
  Untitled();
    Code:
       0: aload_0
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: return

  public static void main(java.lang.String[]);
    Code:
       0: new           #2                  // class Untitled$T
       3: dup
       4: invokespecial #3                  // Method Untitled$T."<init>":()V
       7: astore_1
       8: getstatic     #4                  // Field java/lang/System.out:Ljava/io/PrintStream;
      11: aload_1
      12: getfield      #5                  // Field Untitled$T.a:I
      15: invokevirtual #6                  // Method java/io/PrintStream.println:(I)V
      18: aload_1
      19: invokestatic  #7                  // Method changeValue:(LUntitled$T;)V
      22: getstatic     #4                  // Field java/lang/System.out:Ljava/io/PrintStream;
      25: aload_1
      26: getfield      #5                  // Field Untitled$T.a:I
      29: invokevirtual #6                  // Method java/io/PrintStream.println:(I)V
      32: return

  static void changeValue(Untitled$T);
    Code:
       0: aload_0
       1: iconst_1
       2: putfield      #5                  // Field Untitled$T.a:I
       5: return
}
```

我们明显可以发现，在 chagneValue 函数中，多了个 putfield 命令，而这个命令的作用就是将值赋予到堆中分配的对象上。也就是，这段代码的结果是符合预期的。那么是不是就是和上述的结论是冲突的？因为最后使用的是一个引用堆的地址。

但是，某个角度上，我们的思路也开始明朗起来。为什么会多一个 putfield , 因为这个对象在堆上分配了内存。那么，为什么会在堆上分配内存，因为我们手动的 new 了一个对象。那么，如果在第二段代码处，我们使用 new 会怎么样。

于是:

```
class Untitled {
    public static void main(String[] args) {
        Integer a = new Integer(9999);
        System.out.println(a);
        changeValue(a);
        System.out.println(a);
    }

    static void changeValue(Integer a) {
        a = 99999;
    }
}

Mike@Snail ~/Desktop » javac Untitled.java
Mike@Snail ~/Desktop » javap -c Untitled
Compiled from "Untitled.java"
class Untitled {
  Untitled();
    Code:
       0: aload_0
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: return

  public static void main(java.lang.String[]);
    Code:
       0: new           #2                  // class java/lang/Integer
       3: dup
       4: sipush        9999
       7: invokespecial #3                  // Method java/lang/Integer."<init>":(I)V
      10: astore_1
      11: getstatic     #4                  // Field java/lang/System.out:Ljava/io/PrintStream;
      14: aload_1
      15: invokevirtual #5                  // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      18: aload_1
      19: invokestatic  #6                  // Method changeValue:(Ljava/lang/Integer;)V
      22: getstatic     #4                  // Field java/lang/System.out:Ljava/io/PrintStream;
      25: aload_1
      26: invokevirtual #5                  // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      29: return

  static void changeValue(java.lang.Integer);
    Code:
       0: ldc           #7                  // int 99999
       2: invokestatic  #8                  // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
       5: astore_0
       6: return
}
```

可以看到，我们成功的在堆上分配了一个空间，但是，在 changeValue 方法中，我们并没有看到 putfield 操作。原因其实也很简单，诸位可以看 sipush 命令，这个命令是指将常量传入栈中，而非上一步中的 getfield 命令。

于是我们再来看看 Integer 的源码。

```
...
    /**
     * The value of the {@code Integer}.
     *
     * @serial
     */
    private final int value;
...
```

我们可以看到，对于单个的 Integer 变量而言，他的值是 final 的，而且有一个常量池概念，是不是很耳熟，其实这个也是和 String 的常量池是一样的。至于什么自动装箱和拆箱的解释论，我觉得还是这个比较简单。 因为，编译器的行为，我并没有 100% 的把握确认。

那么，我们的答案就很明显了。

##结论
1. 在堆上产生的非常量新对象，采用的是引用传递。
2. 除一之外的所有变量，都是值传递。


PS:
> 众所周知，Java 并不是一个完美的语言。因为时代问题，和历史原因，他有很多的设计不当的地方。但是，这些设计不好的地方居然被拿来用作考题。让我很是不爽。我们之所以学习编程，并不是去学习这么因为设计问题而带来的一系列的麻烦。那这个作为考题，来考察语言熟悉度，我是可以理解。但是，我还是觉得这个意义不大。毕竟，作为一个合格的工程师，是绝对不会去写这样的，不确定性结果的代码。

