/*
 * 	Problem Statement
 *  Prolog program to take a list and compute product of all numbers
 */

product([], 1).
product([H|T], X) :-
   product(T, Rest),
   X is H * Rest.
