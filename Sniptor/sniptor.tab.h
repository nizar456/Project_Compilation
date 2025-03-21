/* A Bison parser, made by GNU Bison 2.7.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2012 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_SNIPTOR_TAB_H_INCLUDED
# define YY_YY_SNIPTOR_TAB_H_INCLUDED
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     COMPLEXITY = 258,
     EXPLAIN = 259,
     PROTECT = 260,
     CAPTURE = 261,
     RAISE = 262,
     CONTAINS = 263,
     SIZE = 264,
     ACT = 265,
     CASE = 266,
     CUT = 267,
     SKIP = 268,
     CREATE = 269,
     FUNCTION = 270,
     PROCEDURE = 271,
     TYPE = 272,
     SHOW = 273,
     ENTER = 274,
     INT = 275,
     FLT = 276,
     CHR = 277,
     DBL = 278,
     STR = 279,
     BOL = 280,
     LST = 281,
     DICT = 282,
     TEXT = 283,
     TRUE = 284,
     FALSE = 285,
     REPEAT = 286,
     FOR = 287,
     WHILE = 288,
     FROM = 289,
     TO = 290,
     WHEN = 291,
     DO = 292,
     OTHERWISE = 293,
     ASSIGN = 294,
     LBRACKET = 295,
     RBRACKET = 296,
     LBRACE = 297,
     RBRACE = 298,
     LPAREN = 299,
     RPAREN = 300,
     END_INSTR = 301,
     COLON = 302,
     RETURN_FUNC = 303,
     CONST_MARKER = 304,
     COMMENT_START = 305,
     COMMENT_END = 306,
     SYNTAX_HELP = 307,
     GT = 308,
     GTE = 309,
     LT = 310,
     LTE = 311,
     EQ = 312,
     NEQ = 313,
     SQ = 314,
     MOD = 315,
     FACT = 316,
     POW = 317,
     ABS = 318,
     AND = 319,
     OR = 320,
     NOT = 321,
     XOR = 322,
     STRING = 323,
     CHAR = 324,
     NUMBER = 325,
     REAL = 326,
     IDENTIFIER = 327,
     UNKNOWN = 328,
     NEGATIVE_VALUE_ERROR = 329,
     ZERO_DIVISION_ERROR = 330
   };
#endif


#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !YY_YY_SNIPTOR_TAB_H_INCLUDED  */
