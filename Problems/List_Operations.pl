/*
	Problem Statement

	Task is to write the following predicates in SWI-Prolog.
	The slash and number after the predicate name give the number of parameters for the predicate.
	These characters are NOT part of the predicate name.
	So, remove/3 means that remove is a predicate with 3 parameters.

		1) remove/3.
			Removes from the list given by the first parameter, all elements appearing in the list given by the second parameter, and returns the result in the third parameter. Examples: 31 ?- remove([a, b, c, d, e, f], [a, d], X). X = [b, c, e, f] ; 32 ?- remove([a, b, c, d, e, f], [], X). X = [a, b, c, d, e, f] ; 33 ?- remove([a, b, c, d, e, f, a, a, d, e], [a, e], X). X = [b, c, d, f, d] ;

		2) members_in_common/

			Given two lists through the first two parameters, it returns the list of common elements in the third parameter.
			Examples: 46 ?- members_in_common([a, b, c, d, a, b, a], [a, d, f, f, c, c, f], X). X = [a, c, d, a, a] Yes 47 ?- members_in_common([a, b, c, d, a, b, a], [p, q, r, s], X). X = [] Yes 48 ?- members_in_common([a, b, c, d, a, b, a], [], X). X = [] Yes

		3) sum/2.
			Given two parameters, the first one being a list of numbers, return the sum of the numbers in the list in the second parameter. Examples: sum([3, 5, -7, 8], X). X = 9 sum([3], X). X = 3 4) min/2. Given two parameters, the first one being a list of numbers, return the minimum value in the list in the second parameter. min([3, 3, 8, 9, 2, 9, 2], X). X = 2 min([7], X). X = 7 None of the lists is a list of lists.
			The functions must all be independent.
*/

:- style_check(-singleton).
remove([], _, []).
remove([X|Tail], TempList, Result):- member(X, TempList), !, remove(Tail, TempList, Result).
remove([X|Tail], TempList, [X|Result]):- remove(Tail, TempList, Result).

:- style_check(-singleton).
members_in_common([],X,[]):-!.
members_in_common([X|Range],Y,[X|Tail]):-member(X,Y),members_in_common(Range,Y,Tail).
members_in_common([X|Range],Y,L):-members_in_common(Range,Y,L).

:- style_check(-singleton).
sum([],0).
sum([Head|Tail], TotalSum):-sum(Tail, Sum1),TotalSum is Head+Sum1.


:- style_check(-singleton).
min([],X,X).
min([Head|Tail],M,X) :- Head =< M, min(Tail,Head,X).
min([Head|Tail],M,X) :- M < Head, min(Tail,M,X).
min([Head|Tail],X) :- min(Tail,Head,X).
