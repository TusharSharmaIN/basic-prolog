/*
 *  Problem Statement
 *  
 *  Write a prolog program get a simple list and append the list to its reversed list.
 *
 *  For instance
 *      appendList([a,b,c,d],Q).
 *      Q = [a,b,c,d,d,c,b,a]
 */

reverse([],[]).
reverse([H|T1],T2):-reverse(T1,T3),append(T3,[H],T2).
append([],L,L).
append([X|L1],L2,[X|L3]):-append(L1,L2,L3).
appendList(L1,L3):-append(L1,L2,L3),reverse(L1,L2).
