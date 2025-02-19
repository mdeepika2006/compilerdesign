%{
#include <stdio.h>
%}

%%
[0-9]    { printf("It is a digit: %s\n", yytext); }
.        { printf("Not a digit: %s\n", yytext); }
%%

int main() {
    printf("Enter input: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}