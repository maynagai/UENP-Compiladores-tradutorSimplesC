%{ 
#include<string.h>

struct numeros{
char valor[5];
};

struct tipos{
char nome[10];
};

struct includes{
char nome[30];
};


struct numeros numeros[100];
struct tipos tipos[100];
struct includes bibliotecas[100];

int aux=0,aux2=0,aux3=0;
%} 

%% 
[0-9]+ {printf("%s", yytext); strcpy(numeros[aux].valor,yytext); aux++;}
int {printf("Inteiro"); strcpy(tipos[aux2].nome,yytext); aux2++;}
char {printf("letras"); strcpy(tipos[aux2].nome,yytext); aux2++;}
double {printf("numero com vírgula"); strcpy(tipos[aux2].nome,yytext); aux2++;}
float {printf("numero com vírgula"); strcpy(tipos[aux2].nome,yytext); aux2++;}
[a-z]+[.]h {printf("%s", yytext);strcpy(bibliotecas[aux3].nome,yytext); aux3++;}
for {printf("enquanto");}
while {printf("enquanto");}
if {printf("Se");}
else {printf("Se nao");}
printf {printf("escrever");}
scanf {printf("leia");}
include {printf("biblioteca");}
== {printf("igual");}
= {printf("igual");}
> {printf("maior que");}
< {printf("menor que");}
>= {printf("maior ou igual a");}
<= {printf("menor ou igual a");}
return {printf("retornar");}
struct {printf("estrutura");}
. {printf("%s" , yytext);}
%% 


int yywrap(){} 
int main(){ 
int i;


FILE *fp; 
fp = fopen("teste.txt","r"); 
yyin = fp; 

yylex(); 

return 0; 
} 

