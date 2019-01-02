/*
	Problem Statement

	Write a program to implement quicksort

*/

pivot(_, [], [], []).

pivot(Pivot, [Head|Tail], [Head|LesserSubPart], GreaterSubPart) :- Pivot >= Head, pivot(Pivot, Tail, LesserSubPart, GreaterSubPart).

pivot(Pivot, [Head|Tail], LesserSubPart, [Head|GreaterSubPart]) :- pivot(Pivot, Tail, LesserSubPart, GreaterSubPart).

quicksort([], []).

quicksort([Head|Tail], Sorted) :- pivot(Head, Tail, List1, List2), quicksort(List1, SortedList1), quicksort(List2, SortedList2), append(SortedList1, [Head|SortedList2], Sorted).
