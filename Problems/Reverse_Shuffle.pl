/*
	Problem Statement

	Implement "reverseShuffle" as a Prolog rule.
	For example:
		reverseShuffle([3,8,2,6], [7,1,5,9], R).
		R = [3,9,8,5,2,1,6,7]
*/

reverseShuffle(Lst1,Lst2,Res):-reverse(Lst2,Rev_Lst2),shuffle(Lst1,Rev_Lst2,Res).
shuffle([], [], []).
shuffle([X|Xs],[Y|Ys],[X,Y|Zs]):-shuffle(Xs,Ys,Zs).
