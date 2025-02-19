%{
#include <stdio.h>
%}

%%
[0-9]+          { printf("Number: %s\n", yytext); }
[a-zA-Z]+      { printf("Word: %s\n", yytext); }
[<>]=|==|!=|<|> { printf("Relational Operator: %s\n", yytext); }
"//".*          ; // Ignore single-line comments
[ \t\n]+       ; // Ignore whitespace
.               { printf("Unknown character: %s\n", yytext); }
%% 

int main(void) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}