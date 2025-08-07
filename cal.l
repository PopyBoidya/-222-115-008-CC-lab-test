%option noyywrap

%{
#include <stdio.h>
%}

%%

"#include"              { printf("Preprocessor Directive: %s\n", yytext); }
"<stdio.h>"             { printf("Header File: %s\n", yytext); }
"int"                   { printf("Keyword: int\n"); }
"float"                 { printf("Keyword: float\n"); }
"switch"                { printf("Keyword: switch\n"); }
"case"                  { printf("Keyword: case\n"); }
"default"               { printf("Keyword: default\n"); }
"break"                 { printf("Keyword: break\n"); }
"return"                { printf("Keyword: return\n"); }
"scanf"                 { printf("Function: scanf\n"); }
"printf"                { printf("Function: printf\n"); }
"main"                  { printf("Function: main\n"); }
"=="                    { printf("Operator: ==\n"); }
"="                     { printf("Operator: =\n"); }
"*"                     { printf("Operator: *\n"); }
"("                     { printf("Symbol: (\n"); }
")"                     { printf("Symbol: )\n"); }
"{"                     { printf("Symbol: {\n"); }
"}"                     { printf("Symbol: }\n"); }
";"                     { printf("Symbol: ;\n"); }
":"                     { printf("Symbol: :\n"); }
","                     { printf("Symbol: ,\n"); }
[0-9]+"."[0-9]+         { printf("Float: %s\n", yytext); }
[0-9]+                  { printf("Number: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*  { printf("Identifier: %s\n", yytext); }
[ \t\r\n]+              { /* skip whitespace */ }
.                       { printf("Unknown: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
