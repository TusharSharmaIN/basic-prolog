/*
	Problem Statement

	Using the structures parent(X,Y), male(X) and female(X).
	Write a prolog structure that defines sister(X,Y).

*/

sister(X,Y):-female(Y),parent(Y,Z),parent(X,Z)

/*
 *  Code for testing

	male(james1).
	male(charles1).
	male(charles2).
	male(james2).
	male(george1).
	
	female(catherine).
	female(elizabeth).
	female(sophia).
	
	parent(charles1, james1).
	parent(elizabeth, james1).
	parent(charles2, charles1).
	parent(catherine, charles1).
	parent(james2, charles1).
	parent(sophia, elizabeth).
	parent(george1, sophia).
	
	mother(X,Y):-female(Y),parent(X,Y).
	father(X,Y):-male(Y),parent(X,Y).
	
	sister(X,Y):-female(Y),parent(Y,Z),parent(X,Z).
	brother(X,Y):-male(Y),parent(Y,Z),parent(X,Z).

*/
