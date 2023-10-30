%option noyywrap                                                                                                                                     
                                                                                                                                                     
%{                                                                                                                                                   
                                                                                                                                                     
#include<stdio.h>                                                                                                                                    
                                                                                                                                                     
        int fl=0,fl1=0,fl2=0;                                                                                                                        
%}                                                                                                                                                   
                                                                                                                                                     
                                                                                                                                                     
%%                                                                                                                                                   
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
[d]+[a-zA-Z]*[t]$   {printf("%s: ",yytext); fl=1;}                                                                                                   
[a-zA-Z]*[d][e][f][a-zA-Z]* {printf("%s:",yytext); fl2=1;}                                                                                           
\n return 0;                                                                                                                                         
                                                                                                                                                     
%%                                                                                                                                                   
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
int main()                                                                                                                                           
                                                                                                                                                     
{                                                                                                                                                    
                                                                                                                                                     
        yylex();                                                                                                                                     
                                                                                                                                                     
        if(fl==1)                                                                                                                                    
                                                                                                                                                     
                printf("Valid starting in d and ending in t string\n");                                                                              
                                                                                                                                                     
        else if(fl2==1)                                                                                                                              
                                                                                                                                                     
                printf("Valid string containing def string\n");                                                                                      
                                                                                                                                                     
        else                                                                                                                                         
                                                                                                                                                     
                printf("Invalid\n");                                                                                                                 
                                                                                                                                                     
        return 0;                                                                                                                                    
                                                                                                                                                     
}                             