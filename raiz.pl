/**
 * El predicado raiz(N,R) recibe dos entradas (N y R) y es cierto cuando R es la parte entera de la 
 * raiz cuadrada de N.
 *
 * ej: ?- raiz(2,1).
 *     ?- true.
*/

raiz(N,R):-
    N > 0,
    R =:= integer(sqrt(N)).
