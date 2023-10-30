lex
%{


#include<stdio.h>


#include<stdlib.h>


#include "y.tab.h"


extern int yyval;


%}

%%
"i" return IF;
"t" return THEN;


"e" return ELSE;


"a" return A;


"b" return B;


"\n" return NL;


. return(yytext[0]);


%%

yacc

%{


#include<stdio.h>


#include<ctype.h>


#include<stdlib.h>
int yylex();


int yyerror();


%}
%token IF NL THEN A B ELSE


%%
s:stmt NL {printf("Input accepted\n");exit(0);};


stmt: IF expr THEN stmt


    |IF expr THEN stmt ELSE stmt


    | A;


expr: B;
%%
void main() {


printf("Enter expression:\n");


yyparse();


}


int yywrap()


{}


yyerror(char const *s)


{


printf("Input invalid\n");


exit(0);


}
