%{
#include <stdio.h>

int yylex(void);
void yyerror(const char *s);
%}

%token INT_TYPE FLOAT_TYPE DOUBLE_TYPE CHAR_TYPE BOOLEAN_TYPE STRING_TYPE
%token ID INT_LITERAL FLOAT_LITERAL DOUBLE_LITERAL
%token CHAR_LITERAL STRING_LITERAL BOOL_LITERAL
%token ASSIGN SEMICOLON INVALID

%%

declaration:
      INT_TYPE ID SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | INT_TYPE ID ASSIGN INT_LITERAL SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | FLOAT_TYPE ID SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | FLOAT_TYPE ID ASSIGN FLOAT_LITERAL SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | FLOAT_TYPE ID ASSIGN INT_LITERAL SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | DOUBLE_TYPE ID SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | DOUBLE_TYPE ID ASSIGN DOUBLE_LITERAL SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | DOUBLE_TYPE ID ASSIGN FLOAT_LITERAL SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | DOUBLE_TYPE ID ASSIGN INT_LITERAL SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | CHAR_TYPE ID SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | CHAR_TYPE ID ASSIGN CHAR_LITERAL SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | BOOLEAN_TYPE ID SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | BOOLEAN_TYPE ID ASSIGN BOOL_LITERAL SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | STRING_TYPE ID SEMICOLON
        { printf("Valid Java variable declaration!\n"); }

    | STRING_TYPE ID ASSIGN STRING_LITERAL SEMICOLON
        { printf("Valid Java variable declaration!\n"); }
    ;

%%

void yyerror(const char *s)
{
    printf("Invalid declaration: syntax error or type mismatch.\n");
}

int main(void)
{
    printf("Enter a Java variable declaration:\n");
    yyparse();
    return 0;
}

