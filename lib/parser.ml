module MenhirBasics = struct
  
  exception Error = Parsing.Parse_error
  
  type token = 
    | WITH
    | WHILE
    | WHEN
    | VIRTUAL
    | VAL
    | UNDERSCORE
    | UIDENT of (
# 842 "parsing/parser.mly"
       (string)
# 22 "parsing/parser.ml"
  )
    | TYPE
    | TRY
    | TRUE
    | TO
    | TILDE
    | THEN
    | STRUCT
    | STRING of (
# 829 "parsing/parser.mly"
       (string * Location.t * string option)
# 34 "parsing/parser.ml"
  )
    | STAR
    | SIG
    | SEMISEMI
    | SEMI
    | RPAREN
    | REC
    | RBRACKET
    | RBRACE
    | QUOTED_STRING_ITEM of (
# 833 "parsing/parser.mly"
       (string * Location.t * string * Location.t * string option)
# 47 "parsing/parser.ml"
  )
    | QUOTED_STRING_EXPR of (
# 831 "parsing/parser.mly"
       (string * Location.t * string * Location.t * string option)
# 52 "parsing/parser.ml"
  )
    | QUOTE
    | QUESTION
    | PRIVATE
    | PREFIXOP of (
# 815 "parsing/parser.mly"
       (string)
# 60 "parsing/parser.ml"
  )
    | PLUSEQ
    | PLUSDOT
    | PLUS
    | PERCENT
    | OR
    | OPTLABEL of (
# 808 "parsing/parser.mly"
       (string)
# 70 "parsing/parser.ml"
  )
    | OPEN
    | OF
    | OBJECT
    | NONREC
    | NEW
    | MUTABLE
    | MODULE
    | MINUSGREATER
    | MINUSDOT
    | MINUS
    | METHOD
    | MATCH
    | LPAREN
    | LIDENT of (
# 791 "parsing/parser.mly"
       (string)
# 88 "parsing/parser.ml"
  )
    | LETOP of (
# 773 "parsing/parser.mly"
       (string)
# 93 "parsing/parser.ml"
  )
    | LET
    | LESSMINUS
    | LESS
    | LBRACKETPERCENTPERCENT
    | LBRACKETPERCENT
    | LBRACKETLESS
    | LBRACKETGREATER
    | LBRACKETBAR
    | LBRACKETATATAT
    | LBRACKETATAT
    | LBRACKETAT
    | LBRACKET
    | LBRACELESS
    | LBRACE
    | LAZY
    | LABEL of (
# 778 "parsing/parser.mly"
       (string)
# 113 "parsing/parser.ml"
  )
    | INT of (
# 777 "parsing/parser.mly"
       (string * char option)
# 118 "parsing/parser.ml"
  )
    | INITIALIZER
    | INHERIT
    | INFIXOP4 of (
# 771 "parsing/parser.mly"
       (string)
# 125 "parsing/parser.ml"
  )
    | INFIXOP3 of (
# 770 "parsing/parser.mly"
       (string)
# 130 "parsing/parser.ml"
  )
    | INFIXOP2 of (
# 769 "parsing/parser.mly"
       (string)
# 135 "parsing/parser.ml"
  )
    | INFIXOP1 of (
# 768 "parsing/parser.mly"
       (string)
# 140 "parsing/parser.ml"
  )
    | INFIXOP0 of (
# 767 "parsing/parser.mly"
       (string)
# 145 "parsing/parser.ml"
  )
    | INCLUDE
    | IN
    | IF
    | HASHOP of (
# 826 "parsing/parser.mly"
       (string)
# 153 "parsing/parser.ml"
  )
    | HASH
    | GREATERRBRACKET
    | GREATERRBRACE
    | GREATER
    | FUNCTOR
    | FUNCTION
    | FUN
    | FOR
    | FLOAT of (
# 756 "parsing/parser.mly"
       (string * char option)
# 166 "parsing/parser.ml"
  )
    | FALSE
    | EXTERNAL
    | EXCEPTION
    | EQUAL
    | EOL
    | EOF
    | END
    | ELSE
    | DOWNTO
    | DOTOP of (
# 772 "parsing/parser.mly"
       (string)
# 180 "parsing/parser.ml"
  )
    | DOTDOT
    | DOT
    | DONE
    | DOCSTRING of (
# 850 "parsing/parser.mly"
       (Docstrings.docstring)
# 188 "parsing/parser.ml"
  )
    | DO
    | CONSTRAINT
    | COMMENT of (
# 849 "parsing/parser.mly"
       (string * Location.t)
# 195 "parsing/parser.ml"
  )
    | COMMA
    | COLONGREATER
    | COLONEQUAL
    | COLONCOLON
    | COLON
    | CLASS
    | CHAR of (
# 736 "parsing/parser.mly"
       (char)
# 206 "parsing/parser.ml"
  )
    | BEGIN
    | BARRBRACKET
    | BARBAR
    | BAR
    | BANG
    | BACKQUOTE
    | ASSERT
    | AS
    | ANDOP of (
# 774 "parsing/parser.mly"
       (string)
# 219 "parsing/parser.ml"
  )
    | AND
    | AMPERSAND
    | AMPERAMPER
  
end

include MenhirBasics

