%option noyywrap

%{
#include <stdio.h>
%}

%%

"int"           { printf("Keyword: int\n"); }
"for"           { printf("Keyword: for\n"); }
"if"            { printf("Keyword: if\n"); }
"else"          { printf("Keyword: else\n"); }
"return"        { printf("Keyword: return\n"); }
"break"         { printf("Keyword: break\n"); }
"printf"        { printf("Function: printf\n"); }
"main"          { printf("Function: main\n"); }
"=="            { printf("Operator: ==\n"); }
"="             { printf("Operator: =\n"); }
"+"             { printf("Operator: +\n"); }
"-"             { printf("Operator: -\n"); }
"*"             { printf("Operator: *\n"); }
"/"             { printf("Operator: /\n"); }
"%"             { printf("Operator: %%\n"); }
"("             { printf("Symbol: (\n"); }
")"             { printf("Symbol: )\n"); }
"{"             { printf("Symbol: {\n"); }
"}"             { printf("Symbol: }\n"); }
";"             { printf("Symbol: ;\n"); }
","             { printf("Symbol: ,\n"); }
[0-9]+          { printf("Number: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*   { printf("Identifier: %s\n", yytext); }
[ \t\r\n]+      { /* skip whitespace */ }
.               { printf("Unknown: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
