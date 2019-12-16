(define (domain starPuzzle)
  (:requirements
    :strips
    :negative-preconditions
    :equality
  )

  (:predicates
    (clear ?x)
    (on ?x ?y)
    (smaller ?x ?y)
    (only ?y)
  )

  (:action moveTo
    :parameters (?disc ?from ?to)

    :precondition (and
      (only ?to)
      (smaller ?disc ?to)
      (smaller ?disc ?from)
      (on ?disc ?from)
      (clear ?disc)
      (clear ?to)
      (not (= ?from ?to)) ; Negative precondition and equality
    )

    :effect (and
      (only ?to)
      (clear ?from)
      (on ?disc ?to)
      (not (on ?disc ?from))
      (not (clear ?to))
    )

  (:action moveFrom
    :parameters (?disc ?from ?to)

    :precondition (and
      (only ?from)
      (smaller ?disc ?to)
      (smaller ?disc ?from)
      (on ?disc ?from)
      (clear ?disc)
      (clear ?to)
      (not (= ?from ?to)) ; Negative precondition and equality
    )

    :effect (and
      (only ?from)
      (clear ?from)
      (on ?disc ?to)
      (not (on ?disc ?from))
      (not (clear ?to))
    )
)