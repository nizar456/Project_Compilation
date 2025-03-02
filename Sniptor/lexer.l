%{
#include <stdio.h>
%}
    
%option noyywrap
    
%%
"complexity" { printf("MOT-CLE: complexity\n"); }
"explain" { printf("MOT-CLE: explain\n"); }

show    { printf("COMMANDE: affichage\n"); }
enter   { printf("COMMANDE: lecture\n"); }

int     { printf("TYPE: int\n"); }
flt   { printf("TYPE: float\n"); }
chr    { printf("TYPE: char\n"); }
dbl  { printf("TYPE: double\n"); }
str     { printf("TYPE: string\n"); }
bol     { printf("TYPE: booleen\n"); }
lst     { printf("TYPE: list\n"); }
dict    { printf("TYPE: dictionnaire\n"); }

"::" { printf("SYMBOLE: Fin instruction\n"); }
"=>" { printf("SYMBOLE: RETOUR_FONCTION\n"); }
"#"  { printf("SYMBOLE: CONST_MARKER\n"); }
"\[\^" { printf("SYMBOLE: COMMENT_START\n"); }
"\^\]" { printf("SYMBOLE: COMMENT_END\n"); }
"--" { printf("SYMBOLE: SYNTAX_HELP\n"); } 


[+\-*/=;] { printf("OPERATEUR: %s\n", yytext); }

\"[^\"]*\"       { printf("CHAINE: %s\n", yytext); }
\'[^\']\'       { printf("CHAR: %s\n", yytext); }
[0-9]+          { printf("ENTIER: %s\n", yytext); }
[0-9]+\.?[0-9]* { printf("REEL: %s\n", yytext); } 
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIANT: %s\n", yytext); }

[ \t\n\r]+      { /* Ignore les espaces, tabulations et retours à la ligne */ }

. { printf("CARACTERE INCONNU: %s\n", yytext); }
    
%%
    
int main() {
    yylex(); // Lancer l'analyse lexicale
    return 0;
}
   