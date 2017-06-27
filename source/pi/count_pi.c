#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main(){
    float s=1;
    float pi=0;
    float i=1.0;
    float n=1.0;
    float num=2.0;
    float zero=0.0;
    //k=k+i;
    //printf("pi:%.6f\n",pi);
    //float p = 0;
    while(fabs(i)>=1e-6){
        //p+=n;
        //printf("p:%d\n",p);
        pi+=i;
        n=n+num;
        s=zero-s; 
        i=s/n;
    }
    pi=4*pi;
    //printf("p:%d\n",p);
    printf("pi:%.6f\n",pi);
    
    return 0;
}
