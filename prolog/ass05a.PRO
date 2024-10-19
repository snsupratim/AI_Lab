predicates
	gcd(integer,integer,integer)

clauses
	gcd(M,N,X):- gcd(N,M,X), N>M .
	gcd(M,0,M).
	gcd(0,N,N). 
	gcd(M,N,X):- M>N,R= M mod N,gcd(N,R,X).