%{
#include<math.h>
#include<stdio.h>
%}

%token NUM
%left '+''-'
%left '*''/'
%right '^'
%%
input: |input line;
line:	'\n' | exp '\n'{printf("%d\n",$1);};
exp:	NUM 		{$$=$1;  }
	|exp'+'exp 	{$$=$1+$3;  }
	|exp'-'exp 	{$$=$1-$3;  }
	|exp'*'exp 	{$$=$1*$3;  }
	|exp'/'exp 	{$$=$1/$3;  }
	|exp'^'exp 	{$$=pow ($1,$3);  }
	|'('exp')'	{$$=$2 }
;
%%
#include "lex.yy.c"
yyerror(){printf("error in input");}
int main()
{
yyparse();
return 0;
}
