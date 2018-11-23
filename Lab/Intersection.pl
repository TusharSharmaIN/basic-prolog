intersect([],X,[]):-!.
intersect([X|R],Y,[X|T]):-member(X,Y),intersect(R,Y,T).
intersect([X|R],Y,L):-intersect(R,Y,L).
