%{                                                                                                                                                   
int flag=0;                                                                                                                                          
%}                                                                                                                                                   
%x CMNT                                                                                                                                              
%%                                                                                                                                                   
"/*" {BEGIN CMNT;}                                                                                                                                   
<CMNT>. return '\.';                                                                                                                                 
<CMNT>["]"*/"["] return '\.';                                                                                                                        
<CMNT>\n                                                                                                                                             
<CMNT>"*/" {BEGIN INITIAL ; flag=1;}                                                                                                                 
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
if(flag==1)                                                                                                                                          
printf(" is the comment\n");                                                                                                                         
else                                                                                                                                                 
printf("This is not a comment\n");                                                                                                                   
                //{                                                                                                                                  
                        // if(flag == 0)                                                                                                             
                        //else                                                                                                                       
                        //     printf("%s",yytext);                                                                                                  
                        return 0;                                                                                                                    
                }                  