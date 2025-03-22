%{
#include "sniptor.tab.h"  
%}

%option noyywrap

%%

"complexity"    { return COMPLEXITY; }
"explain"       { return EXPLAIN; }
"protect"       { return PROTECT; }
"capture"       { return CAPTURE; }
"raise"         { return RAISE; }

"contains"      { return CONTAINS; }
"size"          { return SIZE; }
"act"           { return ACT; }

"case"          { return CASE; }
"cut"           { return CUT; }
"skip"          { return SKIP; }

"create"        { return CREATE; }
"function"      { return FUNCTION; }
"procedure"     { return PROCEDURE; }
"type"          { return TYPE; }

"show"          { return SHOW; }
"enter"         { return ENTER; }

"int"           { return INT; }
"flt"           { return FLT; }
"chr"           { return CHR; }
"dbl"           { return DBL; }
"str"           { return STR; }
"bol"           { return BOL; }
"lst"           { return LST; }
"dict"          { return DICT; }

"True"          { return TRUE; }
"False"         { return FALSE; }

"repeat"        { return REPEAT; }
"for"           { return FOR; }
"while"         { return WHILE; }
"from"          { return FROM; }
"to"            { return TO; }

"when"          { return WHEN; }
"do"            { return DO; }
"otherwise"     { return OTHERWISE; }

"<-"            { return ASSIGN; }
"["             { return LBRACKET; }
"]"             { return RBRACKET; }
"{"             { return LBRACE; }
"}"             { return RBRACE; }
"("             { return LPAREN; }
")"             { return RPAREN; }
"::"            { return END_INSTR; }
":"             { return COLON; }
"=>"            { return RETURN_FUNC; }
"#"             { return CONST_MARKER; }
"\[\^"          { return COMMENT_START; }
"\^\]"          { return COMMENT_END; }
"--"            { return SYNTAX_HELP; }

"gt"            { return GT; }
"gte"           { return GTE; }
"lt"            { return LT; }
"lte"           { return LTE; }
"eq"            { return EQ; }
"neq"           { return NEQ; }

[+\-*/=]        { return yytext[0]; }  
"sq"            { return SQ; }
"%"             { return MOD; }
"!"             { return FACT; }
"\^"            { return POW; }
"|"             { return ABS; }

"and"           { return AND; }
"or"            { return OR; }
"not"           { return NOT; }
"xor"           { return XOR; }

"NegativeValueError" { return NEGATIVE_VALUE_ERROR; }
"ZeroDivisionError"  { return ZERO_DIVISION_ERROR; }

\"[^\"]*\"      { yylval.str = strdup(yytext); return STRING; }  
\'[^\']\'       { yylval.chr = yytext[1]; return CHAR; }         

[0-9]+          { yylval.num = atoi(yytext); return NUMBER; }    
[0-9]+\.?[0-9]* { yylval.real = atof(yytext); return REAL; }     

[a-zA-Z_][a-zA-Z0-9_]* { yylval.str = strdup(yytext); return IDENTIFIER; } 
[a-zA-Z0-9_]* { yylval.str = strdup(yytext); return TEXT; } 

[ \t\n\r]+      { /* Ignore les espaces, tabulations et retours à la ligne */ }

.               { return UNKNOWN; }  

%%

