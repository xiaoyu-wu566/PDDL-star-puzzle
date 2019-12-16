(define (problem pb5)
  (:domain starPuzzle)

  (:objects peg1 peg2 peg3 pego d1 d2 d3 d4 d5)

  ; The initial state describe what is currently true
  ; Everything else is considered false
  (:init
    ; Discs are smaller than pegs
    (smaller d1 peg1) (smaller d1 peg2) (smaller d1 peg3) (smaller d1 pego)
    (smaller d2 peg1) (smaller d2 peg2) (smaller d2 peg3) (smaller d2 pego)
    (smaller d3 peg1) (smaller d3 peg2) (smaller d3 peg3) (smaller d3 pego)
    (smaller d4 peg1) (smaller d4 peg2) (smaller d4 peg3) (smaller d4 pego)
    (smaller d5 peg1) (smaller d5 peg2) (smaller d5 peg3) (smaller d5 pego)
    ; Discs are also smaller than some other discs
    (smaller d1 d2) (smaller d1 d3) (smaller d1 d4) (smaller d1 d5)
    (smaller d2 d3) (smaller d2 d4) (smaller d2 d5)
    (smaller d3 d4) (smaller d3 d5)
    (smaller d4 d5)
    
    (only pego)

    ; There is nothing on top of some pegs and disc
    (clear peg2)
    (clear peg3)
    (clear d1)
    (clear pego)

    ; Discs are stacked on peg1
    (on d5 peg1)
    (on d4 d5)
    (on d3 d4)
    (on d2 d3)
    (on d1 d2)
  )

  ; The goal state describe what we desire to achieve
  (:goal (and
    ; Discs stacked on peg3
    (on d5 peg3)
    (on d4 d5)
    (on d3 d4)
    (on d2 d3)
    (on d1 d2)
  ))
)