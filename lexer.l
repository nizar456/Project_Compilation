%{
#include <stdio.h>
%}

%%

"<-"            { printf("OP_AFFECTATION: AFFECTATION\n"); }

"+"             { printf("OP_ARITH: PLUS\n"); }
"-"             { printf("OP_ARITH: MOINS\n"); }
"*"             { printf("OP_ARITH: MULTIPLICATION\n"); }
"/"             { printf("OP_ARITH: DIVISION\n"); }
"%"             { printf("OP_ARITH: MODULO\n"); }
"!"             { printf("OP_ARITH: FACTORIELLE\n"); }
"^"             { printf("OP_ARITH: PUISSANCE\n"); }
"sq"            { printf("OP_ARITH: RACINE_CARREE\n"); }
"|[0-9]+|"      { printf("OP_ARITH: VALEUR_ABSOLUE\n"); }

"and"           { printf("OP_LOGIQUE: ET\n"); }
"or"            { printf("OP_LOGIQUE: OU\n"); }
"not"           { printf("OP_LOGIQUE: NON\n"); }
"xor"           { printf("OP_LOGIQUE: XOR\n"); }

"gt"            { printf("OP_COMPARAISON: SUP\n"); }
"gte"           { printf("OP_COMPARAISON: SUP_EGAL\n"); }
"lt"            { printf("OP_COMPARAISON: INF\n"); }
"lte"           { printf("OP_COMPARAISON: INF_EGAL\n"); }
"neq"           { printf("OP_COMPARAISON: DIFFERENT\n"); }
"eq"            { printf("OP_COMPARAISON: EGAL\n"); }

".contains"     { printf("OP_CHAINE: CONTIENT\n"); }
".size"         { printf("OP_CHAINE: LONGUEUR\n"); }

[ \t\n]+        ;  /* Ignorer les espaces et nouvelles lignes */
.               { printf("Caractère inconnu : %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}