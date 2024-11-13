% Define the domain
domains
    list = integer*    % list is a list of integers

% Define the predicate
predicates
    list_length(list, integer)

% Define clauses
clauses
    % Base case: the length of an empty list is 0
    list_length([], 0).
    
    % Recursive case: the length of a list is 1 + the length of the tail
    list_length([_|Tail], Length) :-
        list_length(Tail, TailLength),
        Length = TailLength + 1.
