/*
	Problem Statement

	Consider the file of facts and rules shown here:

	takingclass(amy,programminglanguages).
	takingclass(jacob,programminglanguages).
	takingclass(lindsay,programminglanguages).
	takingclass(becca,softwareengineering).
	takingclass(ryan,softwareengineering).
	takingclass(amanda,softwareengineering).
	takingclass(amy,softwareengineering).

	profofclass(programminglanguages,browning).
	profofclass(softwareengineering,sigman).

	hasthisprof(X,Y):-takingclass(X,Z),profofclass(Z,Y).

	a)	Show the successive instantiation attempts that the ineference engine makes when given this query:

		hasthisprof(X,sigman).

	b)	Write rules for the following relationships:
		
		i)	inclasstogether(X,Y) should return true if X and Y are two students in the same class.
		ii)	csmajor(X) should return true if X is taking programming languages or software engineering.

*/


takingclass(amy,programminglanguages).
takingclass(jacob,programminglanguages).
takingclass(lindsay,programminglanguages).
takingclass(becca,softwareengineering).
takingclass(ryan,softwareengineering).
takingclass(amanda,softwareengineering).
takingclass(amy,softwareengineering).

profofclass(programminglanguages,browning).
profofclass(softwareengineering,sigman).

hasthisprof(X,Y):-takingclass(X,Z),profofclass(Z,Y).

inclasstogether(X,Y):-takingclass(X,Z),takingclass(Y,Z).
csmajor(X):-takingclass(X,programminglanguages),takingclass(X,softwareengineering).
