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
    (forall ((x Int))
        (exists ((y Int))
            (implies
                (or
                    (P x y)
                    (not (R x y))
                )
                (forall ((z Int))
                    (Q x z)
                )
            )
        )
    )
)

; Test
(assert
    (forall ((x Int))
        (exists ((y Int))
            (Q x y)
        )
    )
)

(check-sat)

