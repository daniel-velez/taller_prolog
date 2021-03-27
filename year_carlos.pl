/**
 * En qué año del siglo XX nació Carlos, si su edad en el año
 * 2000 es igual a la suma de las cifras de su año de nacimiento.
 *
 * ej: ?- year(AÑO_CARLOS).
*/

year(X):-
    between(1900, 1999, X),
	2000-((X mod 10) + (X mod 100 // 10) + (X mod 1000 // 100) + (X mod 10000 // 1000)) =:= X.
    
