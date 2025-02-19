%{
#include <stdio.h>
%}

%%
[7-9][0-9]{9}  { printf("Valid mobile number: %s\n", yytext); }
.        { printf("Invalid mobile number: %s\n", yytext); }
%%

int main() {
    printf("Enter mobile number: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}