%{
#include <stdio.h>
#include <ctype.h>
%}

%option noyywrap

%%

"programme"    { printf("MOT-CLE: Programme\n"); }
"CONST"        { printf("SECTION: CONST\n"); }
"TYPE"         { printf("SECTION: TYPE\n"); }
"VAR"          { printf("SECTION: VAR\n"); }
"DEBUT"        { printf("SECTION: DEBUT\n"); }
"FIN"          { printf("SECTION: FIN\n"); }
"SOUS_PROG"    { printf("SECTION: SOUS_PROG\n"); }
"car"          { printf("TYPE: car\n"); }
"ent"          { printf("TYPE: ent\n"); }
"sreel"        { printf("TYPE: sreel\n"); }
"dreel"        { printf("TYPE: dreel\n"); }
"bool"         { printf("TYPE: bool\n"); }
"chaine"       { printf("TYPE: chaine\n"); }

"record"       { printf("DEFINITION: Structure (record)\n"); }
"->"          { printf("OPERATEUR: Definition de type (->)\n"); }
"drecord"      { printf("DEBUT BLOC: Structure (record)\n"); }
"frecord"      { printf("FIN BLOC: Structure (record)\n"); }

"Tableau"      { printf("DEFINITION: Tableau\n"); }
"\["           { printf("SYMBOLE: DEBUT Tableau\n"); }
".."            { printf("SYMBOLE: Separateur de bornes\n"); }
"\]"           {printf("SYMBOLE: FIN Tableau\n");}


"de"            { printf("MOT-CLE: de\n"); }
"pour"         { printf("BOUCLE: Pour\n"); }
"jusqua"       { printf("CONDITION: Jusqu'à\n"); }
"pas"          { printf("INSTRUCTION: Pas (incrementation)\n"); }
"fpour"        { printf("FIN BOUCLE: Pour\n"); }

"tantque"      { printf("BOUCLE: Tant que\n"); }
"faire"        { printf("INSTRUCTION: Faire\n"); }
"ftantque"     { printf("FIN BOUCLE: Tant que\n"); }

"repeter"      { printf("BOUCLE: Répéter\n"); }

"si"           { printf("CONDITION: Si\n"); }
"alors"        { printf("INSTRUCTION: Alors\n"); }
"sinon"        { printf("INSTRUCTION: Sinon\n"); }
"fsi"          { printf("FIN CONDITION: fsi\n"); }

"cas"          { printf("CHOIX MULTIPLE: cas\n"); }
"parmis"       { printf("INSTRUCTION: Parmis\n"); }
"autre"        { printf("INSTRUCTION: Autre\n"); }
"sauter"       { printf("INSTRUCTION: Sauter\n"); }
"fcas"         { printf("FIN CHOIX MULTIPLE: fcas\n"); }

"dbloc"        { printf("DEBUT BLOC: dbloc\n"); }
"fbloc"        { printf("FIN BLOC: fbloc\n"); }

"proc"         { printf("DEFINITION: Procédure\n"); }
"dproc"        { printf("DEBUT BLOC: Procédure\n"); }
"fproc"        { printf("FIN: Procédure\n"); }
"fonct"        { printf("DEFINITION: Fonction\n"); }
"dfonct"       { printf("DEBUT BLOC: Fonction\n"); }
"ffonct"       { printf("FIN: Fonction\n"); }
"retourner"    { printf("INSTRUCTION: Retourner\n"); }
"fixe"         { printf("PARAMETRE: Passé par valeur (fixe)\n"); }
"modif"        { printf("PARAMETRE: Passé par adresse (modif)\n"); }

"ecrire"     { printf("INSTRUCTION: Affichage \n"); }

"long"        { printf("OPERATEUR CHAINE: Longueur d'une chaîne (long)\n"); }
"ascii"       { printf("OPERATEUR CARACTERE: Code ASCII (ascii)\n"); }
"chr"         { printf("OPERATEUR CARACTERE: Caractère ASCII (chr)\n"); }

"("           { printf("SYMBOLE: Debut d'une expression\n"); }
")"           { printf("SYMBOLE: Fin d'une expression\n"); }
","           { printf("SYMBOLE: Virgule\n"); }
"+"           { printf("OPERATEUR ARITHMETIQUE: Addition (+)\n"); }
"-"           { printf("OPERATEUR ARITHMETIQUE: Soustraction (-)\n"); }
"*"           { printf("OPERATEUR ARITHMETIQUE: Multiplication (*)\n"); }
"/"           { printf("OPERATEUR ARITHMETIQUE: Division (/)\n"); }
"!"           { printf("OPERATEUR ARITHMETIQUE: Factorielle (!)\n"); }
"\^"          { printf("OPERATEUR ARITHMETIQUE: Puissance (^)\n"); }
"div"         { printf("OPERATEUR ARITHMETIQUE: Division entière (div)\n"); }
"mod"         { printf("OPERATEUR ARITHMETIQUE: Modulo (mod)\n"); }
"b"           { printf("OPERATEUR ARITHMETIQUE: Puissance (b)\n"); }
"rc"          { printf("OPERATEUR ARITHMETIQUE: Racine carrée (rc)\n"); }
"partent"     { printf("OPERATEUR ARITHMETIQUE: Partie entière (partent)\n"); }
"valabs"      { printf("OPERATEUR ARITHMETIQUE: Valeur absolue (valabs)\n"); }

"et"         { printf("OPERATEUR LOGIQUE: ET\n"); }
"ou"         { printf("OPERATEUR LOGIQUE: OU\n"); }
"non"        { printf("OPERATEUR LOGIQUE: NON\n"); }
"xou"        { printf("OPERATEUR LOGIQUE: XOR (xou)\n"); }

">"           { printf("OPERATEUR COMPARAISON: Superieur (>)\n"); }
">="          { printf("OPERATEUR COMPARAISON: Superieur ou égal (>=)\n"); }
"<"           { printf("OPERATEUR COMPARAISON: Inferieur (<)\n"); }
"<="          { printf("OPERATEUR COMPARAISON: Inferieur ou égal (<=)\n"); }
"="           { printf("OPERATEUR COMPARAISON: Egal (=)\n"); }
"<>"          { printf("OPERATEUR COMPARAISON: Different (<>)\n"); }

"vaut"        { printf("OPERATEUR: Affectation pour CONST \n"); }  
":="          { printf("OPERATEUR: Affectation (:=)\n"); }

"vrai"         { printf("LITERAL BOOL: vrai\n"); }
"faux"         { printf("LITERAL BOOL: faux\n"); }

\"[^\"]*\"   { printf("LITERAL CHAINE: %s\n", yytext); }
\'[^\']\' { printf("LITERAL CAR: %s\n", yytext); }
[0-9]+          { printf("LITERAL ENTIER: %s\n", yytext); }
[0-9]+\,?[0-9]* { printf("LITERAL REEL: %s\n", yytext); }

[A-Za-z][A-Za-z0-9]* { printf("Identifiant : %s\n", yytext); }

"%"             { printf("SYMBOLE: commentaire \n"); }
":"             { printf("SYMBOLE: Affectation de type \n"); }
";"            { printf("SYMBOLE: Fin instruction\n"); }
[ \t\n\r]+      { /* Ignore les espaces, tabulations et retours à la ligne */ }

. { printf("CARACTERE INCONNU: %s\n", yytext); }

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}
