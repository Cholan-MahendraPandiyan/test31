%option noyywrap                                                                                                                                     
%{                                                                                                                                                   
        #include<stdio.h>                                                                                                                            
                                                                                                                                                     
%}                                                                                                                                                   
%%                                                                                                                                                   
([a]*|[a]*[b]+|[a][b][b]) printf("valid");                                                                                                           
.+    printf("invalid");                                                                                                                             
%%                                                                                                                                                   
                                                                                                                                                     
int main()                                                                                                                                           
{                                                                                                                                                    
        printf("enter the string:");                                                                                                                 
        yylex();                                                                                                                                     
        return 0;                                                                                                                                    
}