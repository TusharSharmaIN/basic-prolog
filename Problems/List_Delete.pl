/*
 *  Write a Prolog predicate delete(L, N, R).
 *  That takes as argument a list of integers L and an integer N.
 *  It returns a list R that is similar to L except that all occurrences of N are removed.
 *  
 *  For example:
 *
 *  delete([5,3,10,14,2,5,7], 5, R). => R=[3,10,14,2,7]
 */
 
delete([],_,[]).
delete([X|T], X, L):- delete(T, X, L),!.
delete([H|T], X, [H|L]):- delete(T, X, L ).
