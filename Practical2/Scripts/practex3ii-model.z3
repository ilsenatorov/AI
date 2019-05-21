(set-option :produce-models true)


;;; The universe (the elements)
(declare-datatypes () ((Element a b c d)))



;;; The predicates:
(declare-fun IsZero (Element) Bool)              ;; (IsZero x) should be true iff x is the zero element
(declare-fun Successor (Element Element) Bool)   ;; (Successor x y) should be true iff y is the successor of x (x is the predecessor of y)
(declare-fun Sum (Element Element Element) Bool) ;; (Sum x y z) should be true iff x+y=z
(declare-fun Predicate (Element) Bool)



;;; The formulas:


;;; (1) every element has exactly one successor
(assert (forall (Element x))


;;; (2) successor relation is asymmetric
;;; TODO


;;; (3) there is exactly one zero element
;;; TODO


;;; (4) adding the zero element to any other element gives the element again
;;; TODO


;;; (5) summing is commutative
;;; TODO


;;; (6) summing two elements has at most one result
;;; TODO


;;; (7) if element z is the sum of elements x y, x' is the successor of x, then
;;;     the successor of z is the result of the sum of x' and y
;;; TODO


;;; (8) the predicate holds for an element iff it does not hold for its the successor
;;; TODO


;;; (9) the zero element satisfies the predicate
;;; TODO


;;; (10) the sum of every element by itself does not satisfy the predicate
(assert (exists ((x Element) (y Element)) (and (Sum x x y) (not (Predicate y)))))




(check-sat)
