%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);
void yyerror(const char *s);
%}

%union {
    char *str;  // Pour les chaînes de caractères
    int num;    // Pour les entiers
    double real; // Pour les réels
    char chr;   // Pour les caractères
}

// Déclaration des tokens
%token COMPLEXITY EXPLAIN PROTECT CAPTURE RAISE
%token CONTAINS SIZE ACT CASE CUT SKIP
%token CREATE FUNCTION PROCEDURE TYPE SHOW ENTER
%token INT FLT CHR DBL STR BOL LST DICT 
%token TRUE FALSE REPEAT FOR WHILE FROM TO
%token WHEN DO OTHERWISE ASSIGN LBRACKET RBRACKET
%token LBRACE RBRACE LPAREN RPAREN END_INSTR COLON
%token RETURN_FUNC CONST_MARKER COMMENT_START COMMENT_END SYNTAX_HELP 
%token GT GTE LT LTE EQ NEQ SQ MOD FACT POW ABS
%token AND OR NOT XOR UNKNOWN
%token NEGATIVE_VALUE_ERROR ZERO_DIVISION_ERROR
%token <str> STRING TEXT
%token <num> NUMBER
%token <real> REAL
%token <chr> CHAR
%token <str> IDENTIFIER


%%

// Règles de grammaire
program: instruction_list
       ;

instruction_list: instruction_list instruction
                | /* vide */
                ;

instruction: variable_declaration
           | conditional_statement
           | loop_statement
           | function_call
           | procedure_call
           | input_statement
           | output_statement
           | error_handling
           | explain_statement
           | complexity_statement
           | comment
           ;

variable_declaration: type IDENTIFIER ASSIGN expression END_INSTR
                    | CONST_MARKER type IDENTIFIER ASSIGN expression END_INSTR
                    ;

type: INT | FLT | CHR | DBL | STR | BOL | LST | DICT
    ;

expression: expression '+' expression
          | expression '-' expression
          | expression '*' expression
          | expression '/' expression
          | expression '%' expression
          | expression '^' expression
          | expression AND expression
          | expression OR expression
          | NOT expression
          | expression XOR expression
          | expression GT expression
          | expression GTE expression
          | expression LT expression
          | expression LTE expression
          | expression NEQ expression
          | expression EQ expression
          | '(' expression ')'
          | IDENTIFIER
          | NUMBER
          | REAL
          | STRING
          | CHAR
          | TRUE
          | FALSE
          ;

conditional_statement: ACT '{' when_clause otherwise_clause '}'
                     ;

when_clause: WHEN '(' expression ')' DO '{' instruction_list '}'
           ;

otherwise_clause: OTHERWISE '{' instruction_list '}'
                ;

multiple_choice_statement: ACT '(' IDENTIFIER ')' '{' case_list '}'
                         ;

case_list: case_list CASE NUMBER ':' instruction_list CUT
         | OTHERWISE ':' instruction_list CUT
         ;

loop_statement: REPEAT '{' for_loop '}'
              | REPEAT '{' while_loop '}'
              | REPEAT '{' do_while_loop '}'
              ;

for_loop: FOR '(' IDENTIFIER FROM NUMBER TO NUMBER ')' DO '{' instruction_list '}'
        ;

while_loop: WHILE '(' expression ')' DO '{' instruction_list '}'
          ;

do_while_loop: DO '{' instruction_list '}' WHILE '(' expression ')'
             ;

input_statement: ENTER STRING END_INSTR
               ;

output_statement: SHOW expression END_INSTR
                ;

function_declaration: CREATE type FUNCTION IDENTIFIER '(' parameter_list ')' '{' instruction_list RETURN_FUNC expression END_INSTR '}'
                   ;

procedure_declaration: CREATE PROCEDURE IDENTIFIER '(' parameter_list ')' '{' instruction_list '}'
                    ;

parameter_list: parameter_list ',' parameter
              | parameter
              | 
              ;

parameter: type IDENTIFIER
         ;

function_call: IDENTIFIER '(' argument_list ')' END_INSTR
             ;

procedure_call: IDENTIFIER '(' argument_list ')' END_INSTR
              ;

argument_list: argument_list ',' argument
             | argument
             | 
             ;

argument: expression
        ;

error_handling: PROTECT '{' instruction_list '}' CAPTURE '(' error_type ')' '{' instruction_list '}'
              ;

error_type: ZERO_DIVISION_ERROR | NEGATIVE_VALUE_ERROR | IDENTIFIER
          ;

explain_statement: EXPLAIN '{' instruction_list '}'
                 ;

complexity_statement: COMPLEXITY '{' instruction_list '}'
                    ;

comment: COMMENT_START TEXT COMMENT_END
       ;

%%

int main() {
    yyparse();  // Lancer l'analyse syntaxique
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Erreur syntaxique: %s\n", s);
}