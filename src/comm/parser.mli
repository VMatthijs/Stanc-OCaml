
(* The type of tokens. *)

type token = 
  | WHILE
  | VARIABLE of (string)
  | TRUE
  | TIMES
  | THEN
  | SKIP
  | SEMICOLON
  | RPAREN
  | REMAINDER
  | PRINT
  | PLUS
  | OR
  | NUMERAL of (int)
  | NOT
  | NEW
  | MINUS
  | LPAREN
  | LESS
  | IN
  | IF
  | FALSE
  | EQUAL
  | EOF
  | END
  | ELSE
  | DONE
  | DO
  | DIVIDE
  | ASSIGN
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.command)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.command list)
