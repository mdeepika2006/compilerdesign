%{
#include <stdio.h>
#include <stdlib.h>
int yylval;
%}

%%

[0-9]+      { yylval = atoi(yytext); printf("NUMBER(%d)\n", yylval); }
"+"         { printf("ADD\n"); }
"-"         { printf("SUB\n"); }
"*"         { printf("MUL\n"); }
"/"         { printf("DIV\n"); }
[ \t\n]     { /* Ignore whitespace */ }
.           { fprintf(stderr, "Error: Unexpected character '%c'\n", *yytext); }

%%

int main() {
    printf("Enter an expression: ");
    while (yylex()) { /* Tokenization only */ }
    return 0;
}

int yywrap(){
    return 1;
}