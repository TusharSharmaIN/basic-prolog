/*
	Problem Statement

	Your task is to write the following predicates in SWI-Prolog.
	The slash and number after the predicate name give the number of parameters for the predicate.
	These characters are NOT part of the predicate name. So, remove/3 means that remove is a predicate with 3 parameters.
	
	Question:
		remove/3.
		Removes from the list given by the first parameter.
		All elements appearing in the list given by the second parameter.
		Return the result in the third parameter.
	
	Examples:
	
	31 ?- remove([a, b, c, d, e, f], [a, d], X).
	X = [b, c, e, f] ;
	
	32 ?- remove([a, b, c, d, e, f], [], X).
	X = [a, b, c, d, e, f] ;
	
	33 ?- remove([a, b, c, d, e, f, a, a, d, e], [a, e], X).
	X = [b, c, d, f, d] ;
	
	None of the lists is a list of lists.
	The functions must all be independent.
	The only PROLOG predicate that you are allowed to use is member.

*/


/*

* Program to remove from a list

* Such that remove([x,y,z],[y,z],X). will remove [y,z] from [x,y,z] resulting X = [x]

*/

remove([], _, []).
remove([X|Tail], TempList, Result):- member(X, TempList), !, remove(Tail, TempList, Result).
remove([X|Tail], TempList, [X|Result]):- remove(Tail, TempList, Result).
