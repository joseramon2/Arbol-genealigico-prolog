padre(fermin_jimenez,juana_mama).
padre(fermin_jimenez,juan).
padre(fermin_jimenez,fermin_jr).
padre(fermin_jimenez,mario).
padre(fermin_jimenez,lupita).
padre(fermin_jimenez,regino).
padre(fermin_jimenez,arturo).
padre(fermin_jimenez,javier).
padre(fermin_jimenez,ramon).
madre(maria_rodriguez,juana_mama).
madre(maria_rodriguez,juan).
madre(maria_rodriguez,fermin_jr).
madre(maria_rodriguez,mario).
madre(maria_rodriguez,lupita).
madre(maria_rodriguez,regino).
madre(maria_rodriguez,arturo).
madre(maria_rodriguez,javier).
madre(maria_rodriguez,ramon).
padre(ignacio_martin,jose_ramon_papa).
padre(ignacio_martin,francisco).
padre(ignacio_martin,ignacio).
padre(ignacio_martin,rosa).
madre(maria_luz_martin,jose_ramon_papa).
madre(maria_luz_martin,francisco).
madre(maria_luz_martin,ignacio).
madre(maria_luz_martin,rosa).
padre(jose_ramon_papa,jorge).
padre(jose_ramon_papa,luis).
padre(jose_ramon_papa,jose_ramon).
madre(juana_mama,jorge).
madre(juana_mama,luis).
madre(juana_mama,jose_ramon).

abuelo(X,Y):- padre(X,Z), padre(Z,Y).
abuela(X,Y):- madre(X,Z), padre(Z,Y).

hermano(X,Y):- padre(Z,X), padre(Z,Y).

tio(X,Z):- hermano(X,Y), padre(Y,Z).
primer_elemento([C|R]):- write(C).
elemento_restante([C|R]):- write(R).
imprimir([]).
imprimir([C|R]):- write(C),write('\n'),imprimir(R).
imprimirr([]).
imprimirr([C|R]):- imprimirr(R), write(C).
%super_lista([C|R]):- write(C),write('\n'),imprimir(R).

lista_con([], Ys, Ys).
lista_con([X|Xs],Ys,[X|Zs]):-lista_con(Xs, Ys, Zs).

%lista_con([a,b,c], [d,e,f,g],Ls).
