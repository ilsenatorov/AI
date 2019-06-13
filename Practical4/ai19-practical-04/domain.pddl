(define (domain lightup)

(:types
    xpos ;; x positions in the grid *DO NOT REMOVE*
    ypos ;; y positions in the grid *DO NOT REMOVE*
    num  ;; numbers from 0 to 4 to count the number of light bulbs
    )

(:predicates
    ; You may, or may not, use / modify / remove any one of the following
    ; predicates:

    ;; n2 = n1 + 1
    (increment ?n1 ?n2 - num)

    ;; (?x1, ?y1) is (horizontally or vertically) adjacent to (?x2, ?y2)
    (adjacent ?x - xpos ?y - ypos ?x2 - xpos ?y2 - ypos)

    ;; ?x2 is right of ?x1
    (right ?x1 ?x2 - xpos)

    ;; ?y2 is below of ?y1
    (below ?y1 ?y2 - ypos)

    ;; cell (?x, ?y) is lit-up
    (lit ?x - xpos ?y - ypos)

    ;; cell (?x, ?y) is black
    (black ?x - xpos ?y - ypos)

    ;; ?n many light bulbs are vertically or horizontally adjacent to (?x, ?y)
    ;; (may be only defined for the relevant black cells)
    (surrounded ?x - xpos ?y - ypos ?n - num)

    ; TODO (optional): additional predicates go in here
)

;; Place light bulb at given coordinate
(:action place-bulb ; * DO NOT CHANGE THE NAME *
:parameters (?x - xpos ?y - ypos) ; * DO NOT MODIFY THE PARAMETER LIST *
:precondition (and 
    ; TODO
)
:effect (and
    ; TODO
)

)
