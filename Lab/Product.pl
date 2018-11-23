product([],_,[]).
product([H1|T1],L2,R):-put(H1,L2,R1),product(T1,L2,R2),append(R1,R2,R).
put(X,[],[]).
put(X,[H|T],[[X|H]|R]):-put(X,T,R).
