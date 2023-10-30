%option noyywrap                                                                                                                                     
%{                                                                                                                                                   
#include <stdio.h>                                                                                                                                   
#include <string.h>                                                                                                                                  
%}                                                                                                                                                   
%%                                                                                                                                                   
[b][an]{2}[a]*  printf("%s\n",yytext);                                                                                                               
.|\n ;                                                                                                                                               
%%                                                                                                                                                   
int main()                                                                                                                                           
{                                                                                                                                                    
        FILE *fp = fopen("i3.txt", "r");                                                                                                             
        if(fp)                                                                                                                                       
                yyin = fp;                                                                                                                           
        printf("output : \n");                                                                                                                       
        yylex();                                                                                                                                     
}                