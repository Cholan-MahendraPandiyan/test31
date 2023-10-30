%{
#include<stdio.h>
%}
%%
if|else|while|int|switch|for|char {printf("keyword");}
[a-z]([a-z]|0-9])* {printf("identifier");}
[0-9]* {printf("number");}
[0-9]+(.[0-9]+)?(E[+|-]?[0-9])? {printf("unsigned number");}
.* { printf ("invalid"); }
%%
int main()
{
yylex();
return 0;
}
