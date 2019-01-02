/*	Problem Statement

	Create a simple family database (facts and rules) to enable querying the following family relationships.
	Please enable queries for:
		nephew (son of one's sibling)
		cousin
		aunt
		relative.

*/


:- style_check(-singleton).

male(Tom).
male(Bob).
male(Mike).
male(Kim).
male(Peter).

female(Ema).
female(Marie).
female(Saddie).
female(Sery).

parent(Tom,Ema,Bob).
parent(Tom,Ema,Mike).
parent(Bob,Marie,Peter).
parent(Mike,Saddie,Kim).
parent(Mike,Saddie,Sery).

brother(Bob,Mike).
brother(Mike,Bob).
brother(Peter,Kim).
brother(Kim,Peter).

sister(Sery,Kim).
sister(Sery,Peter).

father(X,Y):-parent(X,Z,Y).
mother(X,Y):-parent(Z,X,Y).
son(X,Y,Z):- male(X),father(Y,X),mother(Z,X).
daughter(X,Y,Z):-female(X),father(Y,X),mother(Z,X).
uncle(X,Y):-brother(X,Z),father(Z,Y).
nephew(X,Y):-brother(Y,Z),father(Z,X).
aunt(X,Y):-wife(X,Z),uncle(Z,Y).
cousin(X,Y):-father(Z,X),brother(Z,W),father(W,Y).
