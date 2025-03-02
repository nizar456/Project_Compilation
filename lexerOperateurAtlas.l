%{
#include <stdio.h>
%}

%%

"+"             { printf("OP_ARITH: PLUS\n"); }
"-"             { printf("OP_ARITH: MOINS\n"); }
"*"             { printf("OP_ARITH: MULTIPLICATION\n"); }
"/"             { printf("OP_ARITH: DIVISION\n"); }
"!"             { printf("OP_ARITH: FACTORIELLE\n"); }
"div"           { printf("OP_ARITH: DIV_ENTIERE\n"); }
"mod"           { printf("OP_ARITH: MODULO\n"); }
"^"             { printf("OP_ARITH: PUISSANCE\n"); }
"rc"            { printf("OP_ARITH: RACINE_CARREE\n"); }
"partent"       { printf("OP_ARITH: PARTIE_ENTIERE\n"); }
"valabs"        { printf("OP_ARITH: VALEUR_ABSOLUE\n"); }

"et"            { printf("OP_LOGIQUE: ET\n"); }
"ou"            { printf("OP_LOGIQUE: OU\n"); }
"non"           { printf("OP_LOGIQUE: NON\n"); }
"xou"           { printf("OP_LOGIQUE: XOU\n"); }

">"             { printf("OP_COMPARAISON: SUP\n"); }
">="            { printf("OP_COMPARAISON: SUP_EGAL\n"); }
"<"             { printf("OP_COMPARAISON: INF\n"); }
"<="            { printf("OP_COMPARAISON: INF_EGAL\n"); }
"\\<>"          { printf("OP_COMPARAISON: DIFFERENT\n"); }
"="             { printf("OP_COMPARAISON: EGAL\n"); }

":="            { printf("OP_AFFECTATION: AFFECT\n"); }

"long"          { printf("OP_CHAINE: LONGUEUR\n"); }
"ascii"         { printf("OP_CARACTERE: ASCII\n"); }
"chr"           { printf("OP_CARACTERE: CHR\n"); }

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
