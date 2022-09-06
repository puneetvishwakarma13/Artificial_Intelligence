multi(N1,1,N1).
multi(N1,N2,R):-N2>0,N is N2-1,multi(N1,N,R1),R is N1+R1.
