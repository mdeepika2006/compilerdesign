%{
#include <stdio.h>
#include <ctype.h>
int num_count = 0, word_count = 0;
%}

/* Define patterns for words and numbers */
NUMBER      [0-9]+\.?[0-9]*
WORD        [a-zA-Z]+

%%
{NUMBER}    { printf("Number: %s\n", yytext); num_count++; }
{WORD}      { printf("Word: %s\n", yytext); word_count++; }
[ \t\n]     ;
.           { printf("Other: %s\n", yytext); }
%%

int main() {
    printf("Processing input...\n");
    yylex();
    printf("Total Numbers: %d\n", num_count);
    printf("Total Words: %d\n", word_count);
    return 0;
}

int yywrap() {
    return 1;
}