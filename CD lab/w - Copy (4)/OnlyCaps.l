%option noyywrap                                                                                                                                     
%{                                                                                                                                                   
                                                                                                                                                     
#include <stdio.h>                                                                                                                                   
                                                                                                                                                     
#include <string.h>                                                                                                                                  
%}                                                                                                                                                   
                                                                                                                                                     
%%                                                                                                                                                   
                                                                                                                                                     
[A-Z]+  printf("%s ",yytext);                                                                                                                        
                                                                                                                                                     
[a-z]*  ;                                                                                                                                            
                                                                                                                                                     
.       ;                                                                                                                                            
                                                                                                                                                     
\n      printf("\n");                                                                                                                                
                                                                                                                                                     
%%                                                                                                                                                   
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
int main()                                                                                                                                           
                                                                                                                                                     
{                                                                                                                                                    
                                                                                                                                                     
        FILE *fp = fopen("i4.txt", "r");                                                                                                             
                                                                                                                                                     
        if(fp)                                                                                                                                       
                                                                                                                                                     
                yyin = fp;                                                                                                                           
                                                                                                                                                     
        printf("output : \n");                                                                                                                       
                                                                                                                                                     
        yylex();                                                                                                                                     
                                                                                                                                                     
}                                   