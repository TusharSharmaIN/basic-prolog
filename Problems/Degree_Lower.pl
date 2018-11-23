/*
	Problem Statement

	You are writing a progrma for an online dating website.
	Assume you have the following profiles from different people.
	
	The profiles is the format of name, sex, height(in cm), age, education(hs, bs, ms, phd).
	Profil2es:

		person(lily,female,180,30,phd).
		person(jenny,female,167,25,hs).
		person(bob,male,180,40,phd).
		person(richard,male,190,30,masters).
		persona(tom,male,177,29,hs).

	You know from the experience that a woman will only date a man if
		1.	he is at least as tall as she is,
		2.	his educational level is at least as high as hers,
		3.	he is not younger, and or more than 10 years older than her.

a)	Write a recursive rule degree_lower(A,B) in Prolog that succeeds if the educational
	degree A is lower than or equal to B:
		?- degree_lower(hs,hs).
		yes
		?- degree_lower(hs,bs).
		yes
		?- degree_lower(hs,phd).
		yes
		?- degree_lower(phd,ms).
		no

b)	Write a Prolog predicate dateable(Female,Male) which encodes that dating rules above:
		?-dateable(lily,richard).
		no
		?-dateable(lily,bob).
		yes
		?-dateable(jenny,tom).
		yes

*/

person(lily,female,180,30,phd).
person(jenny,female,167,25,hs).
person(bob,male,180,40,phd).
person(richard,male,190,30,ms).
person(tom,male,177,29,hs).

lower(hs,bs).
lower(bs,ms).
lower(ms,phd).

degree_lower(A,A).
degree_lower(A,B):-lower(A,B).
degree_lower(A,B):-lower(A,X),lower(X,B).
degree_lower(A,B):-lower(A,X),lower(X,Y),lower(Y,B).