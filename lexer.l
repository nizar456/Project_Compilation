%{
#include <stdio.h>
%}

%%

create        printf("Mot-clé: CREATE\n");
function      printf("Mot-clé: FUNCTION\n");
procedure     printf("Mot-clé: PROCEDURE\n");
from          printf("Mot-clé: FROM\n");
to            printf("Mot-clé: TO\n");

protect       printf("Mot-clé: PROTECT (Gestion d'erreur - entoure le code)\n");
capture       printf("Mot-clé: CAPTURE (Gestion d'erreur - récupère et traite l'erreur)\n");
raise         printf("Mot-clé: RAISE (Gestion d'erreur - signale une erreur et arrête l'exécution)\n");


%%

int main() {
    yylex();  /* Lancement de l'analyseur lexical */
    return 0;
}

int yywrap() { return 1; }
