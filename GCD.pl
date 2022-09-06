gcd(M,0,M).
gcd(M,N,R):-N>0,Rem is mod(M,N),gcd(N,Rem,R).
