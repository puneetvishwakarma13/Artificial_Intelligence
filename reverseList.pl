reverse(L,R):-reverse(L,[],R).
reverse([H|T],L1,R):-reverse(T,[H|L1],R).
reverse([],L1,L1).

