---
layout: post
title: Programming Week 9
categories:
- Tech
tags:
- Software
---
## Joseph Circle
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

## Love Game
{% highlight c %}
#include <stdio.h>
#include <math.h>
float p_conflict(float p, int n){
  return 1 - pow(1-p,n) - n*p*pow(1-p,n-1);
}
int main()
{
  float p = 0.07;
  printf("p is %f\n", p);

  for (int n = 1; n<= 100; n++){
    printf("number %d p %f\n",n, p_conflict(p,n));
  }
  return 0;
}
{% endhighlight %}

## Unsigned Int
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
