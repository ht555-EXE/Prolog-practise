fibonacci(N, WS) 
:- loop(N, 0, 1, WS).

loop(0, _, _, []).
loop(N, X1, X2, [X1|WS])
    :- N1 is N - 1,
    X3 is X1 + X2,
    loop(N1, X2, X3, WS).     