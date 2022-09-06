generate_fibo(0,0).
generate_fibo(1,1).

generate_fibo(N,T):-N>1,N1 is N-1,generate_fibo(N1,T1),N2 is N-2,generate_fibo(N2,T2),T is T1+T2.
