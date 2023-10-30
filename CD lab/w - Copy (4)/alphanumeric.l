%option noyywrap                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
%{                                                                                                                                                   
                                                                                                                                                     
#include <stdio.h>                                                                                                                                   
                                                                                                                                                     
#include <string.h>                                                                                                                                  
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
%}                                                                                                                                                   
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
%%                                                                                                                                                   
                                                                                                                                                     
[a-zA-Z0-9]+  printf("%s\n",yytext);                                                                                                                 
                                                                                                                                                     
.|\n ;                                                                                                                                               
                                                                                                                                                     
%%                                                                                                                                                   
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
int main()                                                                                                                                           
                                                                                                                                                     
{                                                                                                                                                    
                                                                                                                                                     
        FILE *fp = fopen("i2.txt", "r");                                                                                                             
                                                                                                                                                     
        if(fp)                                                                                                                                       
                                                                                                                                                     
                yyin = fp;                                                                                                                           
                                                                                                                                                     
        printf("output : \n");                                                                                                                       
                                                                                                                                                     
        yylex();                                                                                                                                     
                                                                                                                                                     
        return 0;                                                                                                                                    
                                                                                                                                                     
}                       