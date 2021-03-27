/**
 * Mi hijo es ahora tres veces más joven que yo, pero hace 5
 * años era cuatro veces más joven. ¿Qué edad tienen padre e
 * hijo?
 *
 * ej: ?- pitagoras(10,3,4,5).
 *     ?- true.
*/

edad_padre_hijo(EDAD_PADRE,EDAD_HIJO):-
	between(1, 137, EDAD_PADRE),
	AUX is (EDAD_PADRE // 3),
	between(1, AUX, EDAD_HIJO),
	EDAD_PADRE =:= (3 * EDAD_HIJO),
    (EDAD_PADRE - 5) =:= 4 * (EDAD_HIJO - 5),
	3 * EDAD_HIJO =:= EDAD_PADRE.
