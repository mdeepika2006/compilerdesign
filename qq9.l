%{
#include <stdio.h>
#include <string.h>

int max_length = 0;
%}

%%
[a-zA-Z]+    { 
                int len = strlen(yytext);
                if (len > max_length) {
                    max_length = len;
                }
             }
.            ;

%%

int main() {
    printf("Enter text: ");
    yylex();
    printf("\nLength of the longest word: %d\n", max_length);
    return 0;
}

int yywrap() {
    return 1;
}