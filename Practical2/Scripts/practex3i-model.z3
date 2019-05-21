(set-option :produce-models true)

; Defining the predicates:
(declare-fun P (Int Int) Bool)
(declare-fun Q (Int Int) Bool)
(declare-fun R (Int Int) Bool)


;(declare-const x Int)
;(declare-const y Int)


(assert (forall ((x Int))))


;(assert
;    (exists (
;        (x Element)
;        (y Element)
;        )
;        (and (Sum x x y) (not (Predicate y)))
;    )
;)

