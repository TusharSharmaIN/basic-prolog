/*
	Problem Statement

	Enter a input into a list and enter the string "Done" when its done entering the input.

*/

getList([X|List]):-
writeln('Enter Element:'),
read(X),
dif(X,"Done"),
getList(List).

getList([]).
