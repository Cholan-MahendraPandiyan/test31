%{                                                                                                                                                   
#include<stdio.h>                                                                                                                                    
#include<string.h>                                                                                                                                   
int i,j;                                                                                                                                             
char temp;                                                                                                                                           
%}                                                                                                                                                   
%%                                                                                                                                                   
[a-zA-Z ]+\n     {                                                                                                                                   
i=0;                                                                                                                                                 
j=strlen(yytext)-1;                                                                                                                                  
while(i<j)                                                                                                                                           
{                                                                                                                                                    
temp=yytext[i];                                                                                                                                      
yytext[i]=yytext[j];                                                                                                                                 
yytext[j]=temp;                                                                                                                                      
i++;                                                                                                                                                 
j--;                                                                                                                                                 
}                                                                                                                                                    
fprintf(yyout,  "%s", yytext);                                                                                                                       
}                                                                                                                                                    
%%                                                                                                                                                   
int yywrap()                                                                                                                                         
{                                                                                                                                                    
return 1;                                                                                                                                            
}                                                                                                                                                    
                                                                                                                                                     
int main(){                                                                                                                                          
extern FILE *yyin,*yyout;                                                                                                                            
yyin=fopen("i1.txt","r");                                                                                                                            
yyout=fopen("o1.txt","w");                                                                                                                           
yylex();                                                                                                                                             
}                        