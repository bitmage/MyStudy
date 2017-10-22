---
title: Understand (*(void(*)())0)() in C
date: 2017-10-22 12:57:07
tags:
    - C language
    - Pointer
---

When a computer is switched on, the hardware will call the subroutine whose address is saved in location zero, so if we want to simulate turning power on and we should devise a C statement which will call this subroutine explicitly.

Then, the following code is coming: `(*(void(*)())0)();`.

In order to understand the what the declear means. We should know the following first.

Every C variable declaration has two parts: a type and a list of expression-like things called *declarators*. A declarator looks like something a expression that is expected to evaluate to the given type. The simplest declarator is a varibale: `float a, b;`.

Which indicates two variables **a, b**, and you can use parentheses freely, for example `float ((f))` is the same as `float f`.

But the `float *pf` means the pointer to a float.

At the same time, the funtion declaration is like `float ff()`, which means ff is a function whose return value is a float. Furthermore, do you know the difference between `float *ff()` and `float* ff()`?

Actually, the two declarations are the same. Because the priority of `()` is higher than `*` which means that the `float (*ff)()` is the different declaration. `float (*ff)()` means ff is a pointer to a function which return value is float.

So, we can use  `(float (*)())` to cast a expression to a expression returns a pointer to a function which returns a float.

Now, we can divide the first expression into two parts `(* [(void(*)())0] ());`.

+ (void(*)())0 which means we cast 0 into a pointer to a function which returns nothing. 0 is the address where the funciton is(which is we metioned that the hardware will call when the machine is switched on). We use fp to respresent the result of the expression.
+ (*fp)() you would understand that *fp means the funtion. the parentheses and `;` means we invoke the function.


So, the expression's meaning is clear. We find the function whose address is 0, then invoked.

What's more, we can use a typedef(which is not recommended in the linux code guide) to make the declaration much clearer:

```
typedef void (*funcptr)();
(*(funcptr)0)();

/* This typedef define a kind (funcptr) of variable which is a pointer to a function and its return value is void. */
```

Which mean we cast address 0 to a pointer to a function then invoke.

What's more, we all know that we have a signal function in system library. To understand the declaration of the function, we should first declare the signal handle function:

```
void
sigfunc(int n)
{
    /* signal handled here */
}
```

Then, we can use a sfp to respresent the pointer to the signal handler function: `void (*sfp)(int)`. We could use a sig as a int value to represent the return value of **signal**(which is the system function) function. Then the declaration becames:

```
void (*signal(int, void(*)(int)))(int);
```
The declaration means that we have a pointer to a function whose parameters are a integer and a pointer to a function whose parameter is a integer.

So, in your program, you can write code like this:

```
#include "signal.h"
#include "stdio.h"
#include "sys/signal.h"

void f(int a)
{
	printf("%d\n", a);
}


int main(int argc, char *argv[])
{
	void (*sfp)(int);
	sfp = f;
	signal(SIGINT, sfp);
	int a;
	scanf("%d", &a);
	return 0;
}
```

To make sure the system will invoke function `f`, when it receives a signal called SIGINT(you can make it by use ctrl+c).

Have fun.
