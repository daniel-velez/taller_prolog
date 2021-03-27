/**
 * Entre un preso y un carcelero se produce el siguiente
 * diálogo:
 *   - ¿Cuándo saldré de aquí?
 *       - ¿Qué edad tienes?
 *   - Veinticinco
 *       - Yo tengo cincuenta y cuatro. Saldrás cuando te
 *         duplique la edad.
 *
 *   ¿Cuántos años le quedan por cumplir al preso?
 *
 * A = años que le quedan por cumplir al preso.
 * PRESO = edad a la que saldrá el preso.
 * CARCELERO = edad del carcelero cuando le duplique la edad al preso.
 *
 * ej: ?- preso(A,PRESO,CARCELERO).
*/

preso(A,PRESO,CARCELERO):-
	between(26, 137, PRESO),
	between(55, 137, CARCELERO), 
	CARCELERO > PRESO,
	CARCELERO =:= 2*PRESO,
	PRESO =\= CARCELERO,
	(CARCELERO-PRESO) =:= 29,
	A is (CARCELERO - 54).
