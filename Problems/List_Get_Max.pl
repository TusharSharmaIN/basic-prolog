/*
	Problem Statement

	Write a prolog program that finds the maximum of a list of numbers.

*/


/*
* code to find max number in a list such that
* maxInList([LIST], MAX) -> returns maximum number in a LIST
*/

maxInList([L|R], Max) :- foldl(num_max, R, L, Max).
num_max(X, Y, Max) :- Max is max(X, Y).
