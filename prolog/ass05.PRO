% Define the predicate
predicates
    gcd(integer, integer, integer)

% Define the clauses
clauses
    % Base case: If the second number is 0, the GCD is the first number
    gcd(M, 0, M) :- M > 0.
    
    % Recursive case: If M > N, calculate the remainder of M divided by N
    gcd(M, N, X) :-
        N > 0,
        R = M mod N,
        gcd(N, R, X).
