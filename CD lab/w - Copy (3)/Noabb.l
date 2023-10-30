%option noyywrap                                                                                                                                     
%{                                                                                                                                                   
        int v=0,n=0;                                                                                                                                 
%}                                                                                                                                                   
                                                                                                                                                     
%%                                                                                                                                                   
^[a|b]*"abb"[a|b]*$     v++;                                                                                                                         
^[ab]+$ n++;                                                                                                                                         
.       ;                                                                                                                                            
\n return 0;                                                                                                                                         
%%                                                                                                                                                   
                                                                                                                                                     
int main()                                                                                                                                           
{                                                                                                                                                    
        yylex();                                                                                                                                     
        if(v==0 && n!=0)                                                                                                                             
                printf("Valid\n");                                                                                                                   
        else                                                                                                                                         
                printf("Invalid\n");                                                                                                                 
        return 0;                                                                                                                                    
}                            