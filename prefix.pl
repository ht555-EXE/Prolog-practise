prefix([], _, true).
prefix([X|_], [Y|_], false)
    :- X =\= Y.
prefix([X|XS], [Y|YS], N)
    :- X == Y,
    prefix(XS, YS, N).

suffix(XS, YS, N)
    :- reverse(XS, RevXS),
    reverse(YS, RevYS),
    prefix(RevXS, RevYS, N).