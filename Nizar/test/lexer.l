%{
#include <stdio.h>

#ifndef SEPARATEUR
#define SEPARATEUR 256
#endif
#ifndef RETOUR_FONCTION
#define RETOUR_FONCTION 257
#endif
#ifndef CONST_MARKER
#define CONST_MARKER 258
#endif
#ifndef COMMENT_START
#define COMMENT_START 259
#endif
#ifndef COMMENT_END
#define COMMENT_END 260
#endif
#ifndef EXPLAIN
#define EXPLAIN 261
#endif
#ifndef SYNTAX_HELP
#define SYNTAX_HELP 262
#endif
#ifndef COMPLEXITY
#define COMPLEXITY 263
#endif
%}

%%

"::" { printf("SYMBOLE: Fin instruction\n"); }
"=>" { printf("SYMBOLE: RETOUR_FONCTION\n"); }
"#"  { printf("SYMBOLE: CONST_MARKER\n"); }
"\[\^" { printf("SYMBOLE: COMMENT_START\n"); }
"\^\]" { printf("SYMBOLE: COMMENT_END\n"); }
"explain" { printf("MOT-CLE: explain\n"); }
"--" { printf("SYMBOLE: SYNTAX_HELP\n"); } 
"complexity" { printf("MOT-CLE: complexity\n"); }

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}