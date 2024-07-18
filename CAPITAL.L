%{
#include <stdio.h>
%}

%%

[A-Z]+      { printf("Capital word found: %s\n", yytext); }

.|\n        { /* Ignore other characters */ }

%%

int main(void) {
    yylex();
    return 0;
}

int yywrap(void) {
    return 1;
}

OUTPUT:
(c) Microsoft Corporation. All rights reserved.

C:\Program Files (x86)\GnuWin32\bin>flex CAPITAL.L

C:\Program Files (x86)\GnuWin32\bin>gcc lex.yy.c

C:\Program Files (x86)\GnuWin32\bin>a exe
GANGA prasanth
Capital word found: GANGA
