sumlst([],0).
sumlst([H|T],S):-sumlst(T,S1),S is S1+H.
