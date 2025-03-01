%{
#include <stdio.h>
%}
    
%option noyywrap
    
%%

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

[0-9]+(\.[0-9]+)? { printf("NOMBRE: %s\n", yytext); }
 
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIANT: %s\n", yytext); }

[+\-*/=;] { printf("OPERATEUR: %s\n", yytext); }

[ \t\n]+ ;

. { printf("CARACTERE INCONNU: %s\n", yytext); }
    
%%
    
int main() {
    yylex(); // Lancer l'analyse lexicale
    return 0;
}
    