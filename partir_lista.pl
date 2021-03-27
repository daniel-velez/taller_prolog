/**
 * El predicado partir_extended(L,A,B,C) recibe cuatro argumentos y parte la lista L en tres sublistas * de manera que cada una tenga al menos un elemento en común (por lo cual hay que ingresar 3 elementos * iguales en la lista L).
 *
 * ej: ?- partir_extended([1,2,1,3,1], A, B, C).
 */

partir_extended(L,A,B,C):-	
	append(A,AUX,L),
	member(X,L),
	member(X,A),
	member(Y,AUX),
	member(Z,AUX),
	X =:= Y,
	X =:= Z,
	Y =:= Z,
	partir(AUX,B,C).

/**
 * el predicado partir(AUX, B, C) recibe tres argumentos (listas) y divide la lista AUX en dos 
 * sublistas de manera que B y C tiene al menos un elemento en común.
*/
partir(AUX, B, C):-
	append(B,C,AUX),
	member(X,AUX),
	member(X,B),
	member(X,C).
	

