% Program to find the LCM of two numbers
domains
    num = integer

predicates
    gcd(num, num, num)
    lcm(num, num, num)

clauses
    % Predicate to find the GCD using Euclid's algorithm.
    gcd(X, 0, X) :- X > 0.
    gcd(X, Y, GCD) :-
        Y > 0,
        Remainder = X mod Y,
        gcd(Y, Remainder, GCD).

    % Predicate to find the LCM of two numbers.
    lcm(X, Y, LCM) :-
        gcd(X, Y, GCD),
        LCM = (X * Y) div GCD.
