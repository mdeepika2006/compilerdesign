%{
#include <stdio.h>
%}

/* Define keywords */
KEYWORD    if|else|while|for|return|int|char|float|double|void|switch|case|break|continue|default|do|const|static|struct|union|typedef|enum|extern|register|sizeof|volatile|unsigned|signed|long|short|auto|goto
IDENTIFIER [a-zA-Z_][a-zA-Z0-9_]*

%%
{KEYWORD}    { printf("Keyword: %s\n", yytext); }
{IDENTIFIER} { printf("Identifier: %s\n", yytext); }
[ \t\n]      ;
.            { printf("Other: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}