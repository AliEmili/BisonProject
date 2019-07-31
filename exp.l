%option noyywrap
%%
"("		return('(');
")"		return(')');
"+"		return('+');
"-"		return('-');
"*"		return('*');
"/"		return('/');
"^"		return('^');
"\n"	return('\n');
[0-9]+		{yylval=atoi(yytext);return(NUM);}
%%