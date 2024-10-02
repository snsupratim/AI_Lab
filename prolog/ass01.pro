predicates
	male(symbol)
	female(symbol)
	parent(symbol, symbol)
	uncle(symbol, symbol)
	grandson(symbol, symbol)
	brother(symbol, symbol)
	
clauses
	male(raju).
	male(rana).
	male(ranadhir).
	male(rabi).
	male(ratul).
	male(adhir).

	female(radha).
	female(ruma).
	female(rekha).
	female(rai).
	female(romi).

	parent(raju, rai).
	parent(radha, rai).
	parent(raju, rana).
	parent(adhir, romi).
	parent(rai, romi).
	parent(rana, ranadhir).
	parent(rana, rabi).
	parent(ruma, rabi).
	parent(ruma, ranadhir).
	parent(rabi, ratul).
	parent(rekha, ratul).


	uncle(X, Z) :- brother(X,Y), parent(Y,Z), male(X), not(parent(X,Z)).

	grandson(X, Z) :- male(X), parent(Y, X), parent(Z, Y).

	brother(X,Y) :- male(X), parent(Z,X), parent(Z,Y).

% Define goals
goals
    % i) Find the uncle of Romi
    uncle(Uncle, romi).

    % ii) Find the grandson of Radha
    grandson(Grandson, radha).

    % iii) Find the brothers of Rai
    brother(Brother, rai).
