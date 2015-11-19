analyser:	lex.yy.c
	gcc -o u -lfl lex.yy.c

lex.yy.c:
	flex p1.lex

clean:
	rm *.c u