/*
	Problem Statement

	Write the following as Prolog rules:
	Implement a rule called "uncle" that finds every uncle
	in a simple set of family relationships.  You can assume 
	that the rule is called in the presence of some set of facts,
	each of which is of one of the following two forms:

		parent(X,Y)
		male(Z)

	"parent(X,Y)" means that X is a parent of Y.
	"male(Z)" means that Z is a male.
	For example, if the following facts are present:

		parent(john, fred).
		parent(john, terry).
		parent(terry, madge).
		parent(fred, luther).
		male(john).
		male(fred).
		male(luther).

	Then the query:  uncle(U,N).
	should result in Prolog's response: U=fred, N=madge
	(because fred is madge's uncle).
	Your rule should find ALL uncles.
	Of course, you will need to test your rule in more
	complex scenarios to make sure it will work for other
	sets of parent/male facts.
	(note - you should only submit your "uncle" rule.
	you don't need to submit any "parent" or "male" facts.
	We will use our own test cases when grading your "uncle" rule).

*/

	parent(john, fred).
	parent(john, terry).	
	parent(terry, madge).
	parent(fred, luther).
	
	male(john).
	male(fred).
	male(luther).
	male(terry).
	
	brother(X,Y):-male(X),parent(Z,X),parent(Z,Y).
	uncle(X,Y):-brother(X,Z),parent(Z,Y).
