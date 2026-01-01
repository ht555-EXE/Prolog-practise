%original ascending did not have a base case, incorrectly returned false in case of X > Y and incorrectly passed to the recursive ascending with ascending(XYS) corrected:
ascending([_]).
ascending([]).

ascending( [X,Y|XYS] ) :-
X =< Y, ascending([Y|XYS]).
ascending( [X,Y|XYS] ) :-
X > Y, false.
