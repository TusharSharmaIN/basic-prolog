subset([],_,L).
subset([H|T],L):-member(H,L),subset(T,L).
all-subset(X,[Y]):-subset(X,Y).
all-subset(X,[H|T]):-subsets(X,H),all-subset(X,T).
