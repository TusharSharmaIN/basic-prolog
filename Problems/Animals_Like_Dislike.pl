/*	Problem Statement

	Let’s suppose we have the following facts:

	likes (a , dogs ).
	likes (a , cats ).
	likes (b , cats ).

	dislikes (c , dogs ).
	dislikes (d , dogs ).
	dislikes (d , cats ).

	What would the following queries print?
	(Suppose we keep pressing ”;” until ”false.” is the output.)

	(c) ?- likes(a, Animaltype), dislikes(Person, Animaltype), !.

*/

likes_(a,dogs).
likes_(a,cats).
likes_(b,cats).

dislikes_(c,dogs).
dislikes_(d,dogs).
dislikes_(d,cats).

likes(X,Y):-likes_(X,Y).
dislikes(X,Y):-dislikes_(X,Y).
