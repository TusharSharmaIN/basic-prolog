/*
	
  Problem Statement

	Consider the following family tree:

                              James I
                                 |
                                 |
                +----------------+-----------------+
                |                                  |
             Charles I                          Elizabeth
                |                                  |
                |                                  |
     +----------+------------+                     |
     |          |            |                     |
Catherine   Charles II   James II               Sophia
                                                   |
                                                   |
                                                   |
                                                George I
	
	Here are the corresponding clauses:
	
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
	
	a ) Write Prolog predicates for each of the following:
	
		MotherOf(X,Y)
		FatherOf(X,Y)
		SisterOf(X,Y)
		BrotherOf(X,Y)
		AuntOf(X,Y)
		UncleOf(X,Y)
		CousinOf(X,Y)
	
	b) Trace the search through the Prolog database, for the following query:
	
		?- CousinOf(catherine,Z)  

*/

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

motherof(X,Y):-female(Y),parent(X,Y).
fatherof(X,Y):-male(Y),parent(X,Y).

sisterof(X,Y):-female(Y),parent(Y,Z),parent(X,Z).
brotherof(X,Y):-male(Y),parent(Y,Z),parent(X,Z).

auntof(X,Y):-sisterof(Y,Z),parent(X,Z).
uncleof(X,Y):-brotherof(Y,Z),parent(X,Z).

cousinof(X,Y):-fatherof(X,Z),brotherof(Z,W),fatherof(Y,W).
