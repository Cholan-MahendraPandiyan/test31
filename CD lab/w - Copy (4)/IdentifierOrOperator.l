%option noyywrap                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
%{                                                                                                                                                   
                                                                                                                                                     
#include <stdio.h>                                                                                                                                   
                                                                                                                                                     
#include <string.h>                                                                                                                                  
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
%}                                                                                                                                                   
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
%%                                                                                                                                                   
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
[a-zA-Z][a-zA-Z0-9]*    printf("Identifier : %s\n",yytext);                                                                                          
                                                                                                                                                     
[+][+]  printf("Operator: ++\n");                                                                                                                    
                                                                                                                                                     
[+\-*/=]        printf("Operator : %s\n",yytext);                                                                                                    
                                                                                                                                                     
[ \t\n] ;                                                                                                                                            
                                                                                                                                                     
.       ;                                                                                                                                            
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
%%                                                                                                                                                   
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
int main()                                                                                                                                           
                                                                                                                                                     
{                                                                                                                                                    
                                                                                                                                                     

                                                                                                                                                     
        printf("enter the input expression : \n");                                                                                                   
                                                                                                                                                     
        yylex();                                                                                                                                     
                                                                                                                                                     
}