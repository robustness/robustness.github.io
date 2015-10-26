``` ruby def index puts "hello world" end ``` 
``` 
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
    system("PAUSE");
    return EXIT_SUCCESS;
}
 ``` 
