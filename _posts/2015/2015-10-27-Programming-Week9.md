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
