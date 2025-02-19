%{
#include <stdio.h>
%}

%%
[a-zA-Z]+    { printf("Word: %s, Length: %lu\n", yytext, strlen(yytext)); }
.            ;
%%

int main() {
    printf("Enter text: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
