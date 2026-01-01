number(XS, N)
    :- reverse(XS, YS),
    numberLoop(YS, N).

numberLoop([], 0).
numberLoop([X|XS], W)
    :- numberLoop(XS, V),
    W is X + 10 * V.