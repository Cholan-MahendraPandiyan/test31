%{
#include<stdio.h>
%}
%%
^[a-zA-Z_][a-zA-Z0-9_]* { printf("Valid Identifier"); }
^[^a-zA-Z_] { printf("Invalid Identifier"); }
.;
%%
int main()
{
yylex();
return 0;
}