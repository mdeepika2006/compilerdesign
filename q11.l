%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
http: { printf("Valid URL: %s\n", yytext); }
https: { printf("Valid URL: %s\n", yytext); }
www\.[a-zA-Z0-9./?=&_-]+    { printf("Valid URL: %s\n", yytext); }
.|\n                        { printf("Invalid URL: %s\n", yytext); }
%% 

int main(int argc, char **argv) {
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}