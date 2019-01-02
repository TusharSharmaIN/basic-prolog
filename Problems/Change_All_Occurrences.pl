/*
	Problem Statement

	Write a Prolog program,“change_all” to replace all occurences of a given element (second argument) 
	by another element (third argument) in a given list (first argument).

	For example:
		?- change_all([1,2,3,4,3,5,6,3],3,x,List). 
		List=[1,2,x,4,x,5,6,x]
		True.
*/

change_all([], _, _, []).
change_all([O|T], O, R, [R|T2]) :- change_all(T, O, R, T2).
change_all([H|T], O, R, [H|T2]) :- H \= O, change_all(T, O, R, T2).
