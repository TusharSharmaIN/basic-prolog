/*
  Problem Statement

  Copy the following list of eight facts (the data) into a program file.

		born(charlie, date(1, 1, 1998).
		born(frank, date(9, 11, 1990).
		born(ella, date(19, 3, 1995).
		born(louise, date(26, 12, 1999).
		born(nina, date(23, 8, 1989).
		born(tony, date(21, 5, 1995).
		born(billie, date(16, 2, 1988).
		born(chet, date(3, 3, 1993).

	Note that we are representing birth dates of each person in our simple database in the form of date(Day, Month, Year).
	Write a program, year_bornall, to retrieve all people born in a given year, e.g.

	?- year(1995, Person). Person= ella ; Person = tony; False.

*/

date(_,_,_).

born(charlie, date(1, 1, 1998)).
born(frank, date(9, 11, 1990)).
born(ella, date(19, 3, 1995)).
born(louise, date(26, 12, 1999)).
born(nina, date(23, 8, 1989)).
born(tony, date(21, 5, 1995)).
born(billie, date(16, 2, 1988)).
born(chet, date(3, 3, 1993)).

year(X,Y):-born(Y,date(_,_,X)).
