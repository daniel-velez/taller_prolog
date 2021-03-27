/**
 * El predicado pitagoras(N,X,Y,Z) recibe cuatro entradas y es cierto cuando X, Y, Z son menores o iguales que N 
 * y forman una terna pitagórica.
 *
 * ej: ?- pitagoras(10,3,4,5).
 *     ?- true.
*/
pitagoras(N,X,Y,Z):-
    X=<N,
    Y=<N,
    Z=<N,
	X =\= Z,
	X =\= Y,
	Z =\= Y,
	(X * X) =:= Z*Z - (Y*Y),
	(Y*Y) =:= Z*Z - (X*X), 
    Z * Z =:= X*X + Y*Y.

