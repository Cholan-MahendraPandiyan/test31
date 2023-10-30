%option noyywrap                                                                                                                                     
%{                                                                                                                                                   
#include<stdio.h>                                                                                                                                    
                                                                                                                                                     
%}                                                                                                                                                   
%%                                                                                                                                                   
"+"[9][1][6-9][0-9]{9}  printf("Phone number valid");                                                                                                
.+ printf("Phone number Invalid");                                                                                                                   
                                                                                                                                                     
%%                                                                                                                                                   
int main()                                                                                                                                           
{                                                                                                                                                    
        printf("Enter the number:");                                                                                                                 
        yylex();                                                                                                                                     
        return 0;                                                                                                                                    
}                                              