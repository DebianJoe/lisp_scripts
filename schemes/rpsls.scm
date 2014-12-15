(define (game x y)
       (cond
	((eqv? x 'rock)(set! a 0))
	((eqv? x 'spock)(set! a 1))
	((eqv? x 'paper)(set! a 2))
	((eqv? x 'lizard)(set! a 3))
	((eqv? x 'scissors)(set! a 4))
	(else (print "try again, use lowercase")))
       (cond
	((eqv? y 'rock)(set! b 0))
	((eqv? y 'spock)(set! b 1))
	((eqv? y 'paper)(set! b 2))
	((eqv? y 'lizard)(set! b 3))
	((eqv? y 'scissors)(set! b 4)))
       (who_won? a b))

(define (who_won? a b)
	(set! result (modulo (- a b) 5))
	(cond
	 ((= result 0) (print "It's a tie"))
	 ((or (= result 1) (= result 2)) (print "Player 1 Wins"))
	 (else (print "player 2 wins"))))
