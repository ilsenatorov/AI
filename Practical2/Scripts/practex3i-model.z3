(set-option :produce-models true)

; Defining the predicates:
(declare-fun P (Int Int) Bool)
(declare-fun Q (Int Int) Bool)
(declare-fun R (Int Int) Bool)

; Assumption 1
(assert
    (forall ((x Int))
        (exists ((y Int))
            (P x y)
        )
    )
)

; Assumption 2
(assert
    (forall ((x Int))
        (exists ((y Int))
            (not (R x y))
        )
    )
)

; Assumption 3
(assert
    (forall ((x Int) (y Int))
        (implies
            (or
                (P x y)
                (not (R x y))
            )
            (forall ((z Int))
                (or
                    (Q x z)
                    (and
                        (not (P y z))
                        (R y z)
                    )
                )
            )
        )
    )
)

; Test satisfiable
(push)
(assert
    (forall ((x Int))
        (exists ((y Int))
            (Q x y)
        )
    )
)
(echo "Check that Q(x,y ) is satisfiable")
(check-sat)
(pop)

; For this to be valid, the negation should not be satisfiable
(push)
(assert
    (forall ((x Int))
        (exists ((y Int))
            (not (Q x y))
        )
    )
)
(echo "Check that ~Q(x,y ) is not satisfiable")
(check-sat)
(pop)
