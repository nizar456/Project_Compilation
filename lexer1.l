%{
#include <stdio.h>
#include <stdlib.h>
%}

%%



"const"             { printf("%s: Mot-clé\n", yytext); }
"vaut"              { printf("%s: Mot-clé\n", yytext); }
"type"              { printf("%s: Mot-clé\n", yytext); }
"Tableau"           { printf("%s: Mot-clé\n", yytext); }
"de"                { printf("%s: Mot-clé\n", yytext); }
"record"            { printf("%s: Mot-clé\n", yytext); }
"drecord"           { printf("%s: Mot-clé\n", yytext); }
"frecord"           { printf("%s: Mot-clé\n", yytext); }
"var"               { printf("%s: Mot-clé\n", yytext); }
"proc"              { printf("%s: Mot-clé\n", yytext); }
"dproc"             { printf("%s: Mot-clé\n", yytext); }
"fproc"             { printf("%s: Mot-clé\n", yytext); }
"fonct"             { printf("%s: Mot-clé\n", yytext); }
"dfonct"            { printf("%s: Mot-clé\n", yytext); }
"ffonct"            { printf("%s: Mot-clé\n", yytext); }
"fixe"              { printf("%s: Mot-clé\n", yytext); }
"modif"             { printf("%s: Mot-clé\n", yytext); }
"retourner"         { printf("%s: Mot-clé\n", yytext); }
"pour"              { printf("%s: Mot-clé\n", yytext); }
"jusqua"            { printf("%s: Mot-clé\n", yytext); }
"faire"             { printf("%s: Mot-clé\n", yytext); }
"fpour"             { printf("%s: Mot-clé\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
