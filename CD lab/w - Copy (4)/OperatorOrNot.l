%option noyywrap                                                                                                                                     
%{                                                                                                                                                   
        #include<stdio.h>                                                                                                                            
        int ch=0,sp=0,tabs=0;                                                                                                                        
%}                                                                                                                                                   
%%                                                                                                                                                   
[\*]  {printf("It is Multiplication token"); ch=1; }                                                                                                 
[\+]    {printf("It is Addition token"); ch=1;}                                                                                                      
[\-] {printf("It is Subtraction token"); ch=1;}                                                                                                      
[\/]  {printf("It is Division token"); ch=1;}                                                                                                        
[\%]    {printf("It is Modulo token"); ch=1;}                                                                                                        
, ;                                                                                                                                                  
\n return 0;                                                                                                                                         
%%                                                                                                                                                   
int main()                                                                                                                                           
{                                                                                                                                                    
        yylex();                                                                                                                                     
        if(ch==1)                                                                                                                                    
printf(" and it is an operator\n");                                                                                                                  
else                                                                                                                                                 
printf(" is NOT an operator\n");                                                                                                                     
        return 0;                                                                                                                                    
                                                                                                                                                     
}                              