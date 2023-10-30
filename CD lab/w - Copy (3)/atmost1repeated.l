%option noyywrap                                                                                                                                     
                                                                                                                                                     
%{                                                                                                                                                   
                                                                                                                                                     
     #include<stdio.h>                                                                                                                               
                                                                                                                                                     
        int v[10]={0,0,0,0,0,0,0,0,0,0};                                                                                                             
                                                                                                                                                     
        int flag=0, ct=0;                                                                                                                            
                                                                                                                                                     
%}                                                                                                                                                   
                                                                                                                                                     
%%                                                                                                                                                   
                                                                                                                                                     

                                                                                                                                                     
[0]     v[0]++;                                                                                                                                      
                                                                                                                                                     
[1]     v[1]++;                                                                                                                                      
                                                                                                                                                     
[2]     v[2]++;                                                                                                                                      
                                                                                                                                                     
[3]     v[3]++;                                                                                                                                      
                                                                                                                                                     
[4]     v[4]++;                                                                                                                                      
                                                                                                                                                     
[5]     v[5]++;                                                                                                                                      
                                                                                                                                                     
[6]     v[6]++;                                                                                                                                      
                                                                                                                                                     
[7]     v[7]++;                                                                                                                                      
                                                                                                                                                     
[8]     v[8]++;                                                                                                                                      
                                                                                                                                                     
[9]     v[9]++;                                                                                                                                      
                                                                                                                                                     
\n return 0;                                                                                                                                         
                                                                                                                                                     
%%                                                                                                                                                   
                                                                                                                                                     

                                                                                                                                                     
int main()                                                                                                                                           
                                                                                                                                                     
{                                                                                                                                                    
                                                                                                                                                     
        yylex();                                                                                                                                     
                                                                                                                                                     
        for(int i=0;i<10;i++)                                                                                                                        
                                                                                                                                                     
        {                                                                                                                                            
                                                                                                                                                     
                if(v[i]>=2)                                                                                                                          
                                                                                                                                                     
                {                                                                                                                                    
                                                                                                                                                     
                 ct++;                                                                                                                               
                                                                                                                                                     
                }                                                                                                                                    
                                                                                                                                                     
        if(v[i]>2)                                                                                                                                   
                                                                                                                                                     
                flag=-1;                                                                                                                             
                                                                                                                                                     
        }                                                                                                                                            
                                                                                                                                                     
        if(ct>=2)                                                                                                                                    
                                                                                                                                                     
                flag=-1;                                                                                                                             
                                                                                                                                                     
        if(flag==-1)                                                                                                                                 
                                                                                                                                                     
                printf("Invalid number\n");                                                                                                          
                                                                                                                                                     
        else                                                                                                                                         
                                                                                                                                                     
                printf("Valid number\n");                                                                                                            
                                                                                                                                                     
        return 0;                                                                                                                                    
                                                                                                                                                     
}                                 