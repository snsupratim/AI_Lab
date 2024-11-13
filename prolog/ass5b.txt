% Define the domain
domains
    name = integer*   % name is a list of integers

% Define predicates
predicates
    conct(name, name, name)

% Define clauses
clauses
    % Base case: concatenating an empty list with List gives List
    conct([], List, List).
    
    % Recursive case: concatenate [Head|Tail1] with List2 to get [Head|Result]
    conct([Head|Tail1], List2, [Head|Result]) :-
        conct(Tail1, List2, Result).
