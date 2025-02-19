%{
#include <stdio.h>
#include <string.h>
#define MAX_LEN 1000

char old_word[MAX_LEN], new_word[MAX_LEN];
%}

%%

([a-zA-Z0-9_]+) {
    if (strcmp(yytext, old_word) == 0) {
        printf("%s", new_word);
    } else {
        printf("%s", yytext);
    }
}

. { printf("%s", yytext); }

%%

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Usage: %s <old_word> <new_word>\n", argv[0]);
        return 1;
    }

    strcpy(old_word, argv[1]);
    strcpy(new_word, argv[2]);

    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
