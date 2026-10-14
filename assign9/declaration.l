%{
#include "declaration.tab.h"
%}

%%
"int"       { return INT_TYPE; }
"float"     { return FLOAT_TYPE; }
"double"    { return DOUBLE_TYPE; }
"char"      { return CHAR_TYPE; }
"boolean"   { return BOOLEAN_TYPE; }
"String"    { return STRING_TYPE; }

"true"|"false"  { return BOOL_LITERAL; }

[0-9]+"."[0-9]+[fF]  { return FLOAT_LITERAL; }
[0-9]+"."[0-9]+      { return DOUBLE_LITERAL; }
[0-9]+               { return INT_LITERAL; }

\'[^\'\n]\'           { return CHAR_LITERAL; }
\"[^\"\n]*\"          { return STRING_LITERAL; }

[a-zA-Z_][a-zA-Z0-9_]*  { return ID; }

"="  { return ASSIGN; }
";"  { return SEMICOLON; }

[ \t\r\n]+  ;
.  { return INVALID; }
%%

int yywrap(void) {
    return 1;
}
