---
layout: post
title: Programming Week 9
categories:
- Tech
tags:
- Software
---
{% highlight c %}
#include <stdio.h>
int circle(int people, int num)
{
  if (people == 1)
    return 0;
  else
    return (circle(people - 1, num) + num)%people;
}
int main()
{
  int people = 700;
  int num = 1;
  printf("I am the index of last one: %d\n", circle(people, num));
  return 0;
}
{% endhighlight %}

{% highlight cpp %}
#include "stdio.h"
void fun()     //不懂
{  
   unsigned int a=2013;   
   int b=-2; 
   int c=0;   
   while (a+b>0) //当a+b>0是执行以下大括号内的内容，否则输出c
   {  
   a=a+b; 
   c++;   
   }   
   printf("%d", c);
}        //此题有一处错误我没找到，我自己算的答案是1006不知是否正确 
{% endhighlight %}
