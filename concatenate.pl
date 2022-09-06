conc(L1,[],L1).
conc([],L2,L2).
conc([H|T],L2,[H|L3]):-conc(T,L2,L3).
