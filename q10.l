%{
    #include <stdio.h>
    #include <stdlib.h>    
%}

%%
[0-9]{2}-[0-9]{2}-[0-9]{4} {printf("Valid DOB: %s\n", yytext);}
.                          {printf("InValid DOB: %s\n", yytext);}

%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}