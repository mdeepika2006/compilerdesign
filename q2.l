%{
#include <stdio.h>
int positive_count = 0, negative_count = 0;
%}

/* Define patterns for numbers */
POSITIVE    [0-9]+\.?[0-9]*
NEGATIVE    -[0-9]+\.?[0-9]*

%%
{POSITIVE}  { printf("Positive Number: %s\n", yytext); positive_count++; }
{NEGATIVE}  { printf("Negative Number: %s\n", yytext); negative_count++; }
[ \t\n]     ;
.           { printf("Other: %s\n", yytext); }
%%

int main() {
    yylex();
    printf("Total Positive Numbers: %d\n", positive_count);
    printf("Total Negative Numbers: %d\n", negative_count);
    return 0;
}

int yywrap() {
    return 1;
}