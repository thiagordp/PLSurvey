%
% Parent Example
%

% Facts
parent(john, mary).
parent(mary, alice).
born_in_uk(alice).
born_in_uk(bob).

% Rules
british_citizen(Person) :- born_in_uk(Person), not (exception(Person)).
british_citizen(Person) :- parent(Parent, Person), british_citizen(Parent).

exception(bob).