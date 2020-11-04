#include <stdio.h>
#include <stdlib.h>

extern void CMAIN(float a,float b,float c);

int main(){
 float a ,b,c;
 
 printf("Ingrese su a,b y c para la formula \n");
 scanf("%f",&a);
 if(a <= 0){
 printf("Tiene que ser una a > 0 \n");
 return 0;
 }
 scanf("%f",&b);
 scanf("%f",&c);
 CMAIN(a,b,c);

 return 0;
}
