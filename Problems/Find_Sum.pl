/*
	Problem Statement

	Using the Prolog programming language please write a knowledge base for finding the sum of a list of numbers.

*/

list_sum([],0).

list_sum([Head|Tail], TotalSum):-
list_sum(Tail, Sum1),
TotalSum is Head+Sum1.
