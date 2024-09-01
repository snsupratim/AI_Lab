% Define predicates
predicates
    parent(symbol, symbol).
    male(symbol).
    female(symbol).
    uncle(symbol, symbol).
    grandson(symbol, symbol).
    brother(symbol, symbol).
    sibling(symbol, symbol).

% Define clauses
clauses
    parent(radha, rai).
    parent(raju, rai).
    parent(raju, rana).
    parent(radha, rana).
    parent(rai, romi).
    parent(adhir, romi).
    parent(rana, ranadhir).
    parent(rana, rabi).
    parent(ruma, rabi).
    parent(ruma, ranadhir).
    parent(rabi, ratul).
    parent(rekha, ratul).

    male(raju).
    male(rana).
    male(adhir).
    male(ranadhir).
    male(rabi).
    male(ratul).

    female(radha).
    female(ruma).
    female(rekha).
    female(romi).
    female(rai).

    sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

    uncle(X, Z) :- male(X), parent(Y, Z), sibling(X, Y).

    grandson(X, Z) :- male(X), parent(Y, X), parent(Z, Y).

    brother(X, Y) :- male(X), parent(Z, X), parent(Z, Y), X \= Y.

% Define goals
goals
    % i) Find the uncle of Romi
    uncle(Uncle, romi).

    % ii) Find the grandson of Radha
    grandson(Grandson, radha).

    % iii) Find the brothers of Rai
    brother(Brother, rai).
