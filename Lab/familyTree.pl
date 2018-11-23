male(Shankar).
male(Ulhas).
male(Satish).
male(Saurabh).
male(Prashant).
female(Umabai).
female(Mrunal).
female(Sadhna).
female(Swati).
parent(Shankar,Umabai,Ulhas).
parent(Shanar,Umabai,Satish).
parent(Ulhas,Mrunal,Prashant).
parent(Satish,Sadhana,Saurabh).
parent(Satish,Sadhana,Swati).
brother(Ulhas,Satish).
brother(Satish,Ulhas).
brother(Prashant,Saurabh).
brother(Saurabh,Prashant).
sister(Swati,Saurabh).
sister(Swati,Prashant).
father(X,Y):-parent(X,Z,Y).
mother(X,Y):-parent(Z,X,Y).
son(X,Y,Z):-male(X),father(Y,X),mother(Z,X).
daughter(X,Y,Z):-female(X),father(Y,X),mother(Z,X).
wife(X,Y):-female(X),parent(Y,X,Z).
grandfather(X,Y):-male(X),brother(X,Z),father(Z,Y).
aunt(X,Y):-wife(X,Z),uncle(Z,Y).
cousin(X,Y):-father(Z,X),brother(Z,W),father(W,Y).