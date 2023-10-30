%option noyywrap                                                                                                                                     
                                                                                                                                                     
%{                                                                                                                                                   
        #include<stdio.h>                                                                                                                            
        #include<string.h>                                                                                                                           
        #include<stdlib.h>                                                                                                                           
        char str[100], str1[100];                                                                                                                    
%}                                                                                                                                                   
%%                                                                                                                                                   
[a-zA-Z]+       {if(strcmp(yytext, str) == 0)                                                                                                        
                        fprintf(yyout,"%s",str1);                                                                                                    
                else                                                                                                                                 
                        fprintf(yyout,"%s",yytext);}                                                                                                 
%%                                                                                                                                                   
                                                                                                                                                     
int main(int argc, char* argv[])                                                                                                                     
{                                                                                                                                                    
        printf("Enter the string:");                                                                                                                 
        scanf("%s",str);                                                                                                                             
        printf("Enter the replacement:");                                                                                                            
        scanf("%s",str1);                                                                                                                            
        FILE* fp = fopen("input.txt","r");                                                                                                           
        yyin = fp;                                                                                                                                   
        yyout = fopen("output.txt","w");                                                                                                             
        yylex();                                                                                                                                     
        return 0;                                                                                                                                    
}  