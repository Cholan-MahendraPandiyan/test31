%{int flag=0;                                                                                                                                        
%}                                                                                                                                                   
%x CMNT                                                                                                                                              
%%                                                                                                                                                   
"/*" {BEGIN CMNT;}                                                                                                                                   
<CMNT>. return '\.';                                                                                                                                 
<CMNT>\n                                                                                                                                             
<CMNT>["]"*/"["] return '\.';                                                                                                                        
<CMNT>"*/" {BEGIN INITIAL ;}                                                                                                                         
. {                                                                                                                                                  
}                                                                                                                                                    
\n return 0;                                                                                                                                         
%%                                                                                                                                                   
int yywrap()                                                                                                                                         
{                                                                                                                                                    
return 1;                                                                                                                                            
}                                                                                                                                                    
                                                                                                                                                     
int main()                                                                                                                                           
{                                                                                                                                                    
        while(yylex())                                                                                                                               
{                                                                                                                                                    
printf("%s",yytext);                                                                                                                                 
}                                                                                                                                                    

                        return 0;                                                                                                                    
                }  