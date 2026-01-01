product([], 1).
product([X|XS], WS)
:- product(XS, YS),
WS is X * YS.