%{
#include <stdio.h>
%}

%option noyywrap

%%
"int"|"float"|"char"|"double"|"if"|"else"|"while"|"for"|"return" {
    printf("Keyword: %s\n", yytext);
}

[0-9]+\.[0-9]+ {
    printf("Float constant: %s\n", yytext);
}

[0-9]+ {
    printf("Integer constant: %s\n", yytext);
}

[a-zA-Z_][a-zA-Z0-9_]* {
    printf("Identifier: %s\n", yytext);
}

"=="|"!="|"<="|">="|"+"|"-"|"*"|"/"|"="|"<"|">" {
    printf("Operator: %s\n", yytext);
}

";"|","|"("|")"|"{"|"}" {
    printf("Separator: %s\n", yytext);
}

[ \t\r\n]+ ;
. { printf("Unknown character: %s\n", yytext); }
%%

int main(void)
{
    printf("Enter source code (Ctrl+D to finish):\n");
    yylex();
    return 0;
}
