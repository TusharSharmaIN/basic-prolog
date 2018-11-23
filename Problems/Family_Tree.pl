/*	Problem Statement

	Create a prolog database capturing the information about your family.
	The information must be created in terms of a procedure named individual which should have the below mentioned syntax.
	
	individual(tom, male, adam, eve).
	individual(sandra, female, john, jenny).
	
	The facts comprise of individual’s name, sex, and parent's names.
	
	Create a minimum of 15 facts to make the database large enough.
	Create the below mentioned rules to query useful information from the database.
	1. offspring(X, Y) 
		Hint: X is an offspring of Y which means Y is one of X’s parents 
	2. niblings(X, Y) 
		Hint: X is nibling of Y which means X is Y’s sibling’s offspring
	3. puncle(X, Y) 
		Hint: X is Y’s paternal uncle which means X is Y’s father’s brother
	4. modrige(X, Y) 
		Hint: X is Y’s modrige which means X is Y’s mother’s sister
	5. avuncle(X, Y)
		Hint: X is Y’s avuncle which means X is Y’s mother’s brother

*/

individual(tom, male, adam, eve).
individual(sandra, female, john, jenny).

offspring(X,Y):-parent(X,Z,Y).
niblings(X,Y):-offspring(X,Y).

brother(X,Y) :- male(X), parent(X, Z), parent(Y, Z).
uncle(X, Y) :- brother(X, Z), parent(Y, Z).

father(X,Y):-parent(X,Z,Y).
mother(X,Y):-parent(Z,X,Y).

puncle(X,Y):-male(X),brother(X,Z),father(Z,Y).
modrige(X,Y):-female(X),sister(X,Z),mother(Z,Y).

avuncle(X,Y):-male(X),brother(X,Z),mother(Z,Y).
