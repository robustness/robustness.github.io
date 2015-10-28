---
layout: post
title: Programming Homework 4
categories:
- Tech
tags:
- Software
---

## Example 1

{% highlight c %}
#include <cstdlib>
#include <iostream>

using namespace std;
int func(int a, int b)
{
    static int m=0,i=2;
    i+=m+1;
    m=i+a+b;
    return(m);
}

int main(int argc, char *argv[])
{
    int k=4,m=1,p;
    p=func(k,m);
    printf("%d,",p);
    p=func(k,m);
    printf("%d\n",p);
}

{% endhighlight %}

## Example 2
{% highlight c %}
#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    int c; 
    printf("Please input 2743\n");
    while((c=getchar())!='\n')
    {  switch(c-'2')
        {   
          case 0:
          case 1: putchar(c+4);
          case 2: putchar(c+4);break;
          case 3: putchar(c+3);
          case 4: putchar(c+2);break; 
        }  
    }
    printf("\n"); 
}
{% endhighlight %}

## Example 3

{% highlight c %}

#include <cstdlib>
#include <iostream>
# define  FUDGE(y)   2.84+y
# define  PR(a)   printf("%d",(int)(a))
# define  PRINT1(a)  PR(a);putchar('\n')

using namespace std;

int main(int argc, char *argv[])
{
    int x=2;   
    PRINT1(FUDGE(5)*x);
}
{% endhighlight %}

## Example 4
{% highlight c %}
//#include <cstdlib>
//#include <iostream>

#include <stdio.h>
#include <stdlib.h>
//using namespace std;
void swap(int *p,int *q)
{
    int *t;
    t=(int *)malloc(sizeof(int));
    t=p;
    *p=*q;
    *q=*t;
}
int main(int argc, char *argv[])
{
    int a=10,b=20;
    swap(&a,&b);
    printf("%d  %d\n",a,b);
}
{% endhighlight %}

## Example 5
{% highlight c %}
#include <cstdlib>
#include <iostream>
union  pw {
    int i;
    char  ch[2];
} a;

using namespace std;

int main(int argc, char *argv[])
{
    a.ch[0]=13;
    a.ch[1]=1;
    printf("%d\n",a.i);
}
{% endhighlight %}

## Example 6
{% highlight c %}
#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    int i=1,j=3;
    printf("%d\n",i++);
    {
        int i=0;
        i+=j*2;
        printf("%d,%d\n",i,j);
    }
    printf("%d,%d\n",i,j);
}
{% endhighlight %}

## Example 7
{% highlight c %}

#include "stdio.h"
int main()     //不懂
{
   unsigned int a=2013;
   int b=-2;
   int c=0;
   printf("%u\t", a);
   while (a+b>0)
   {
   printf("%u\t", a);
   a=a+b;
   c++;
   if (c>2000)
    break;
   }
   printf("%d", c);
   return 0;
}
{% endhighlight %}
