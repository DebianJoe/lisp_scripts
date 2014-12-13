#;1> (define (sqrt x) (sqrt-iter 1.0 x))

Note: the following toplevel variables are referenced but unbound:

  sqrt-iter (in sqrt)
#;2> (define (square-iter guess x)
       (if (good-enough? guess x)
	   guess
	   (sqrt-iter (improve guess x) x)))

Note: the following toplevel variables are referenced but unbound:

  good-enough? (in square-iter)
  sqrt-iter (in square-iter)
  improve (in square-iter)
#;3> (define (square x) (* x x))
#;4> (define (improve guess x)
       (average guess (/ x guess)))

Note: the following toplevel variables are referenced but unbound:

  average (in improve)
#;5> (define (average x y) (/ (+ x y) 2))
#;6> (define (good-enough? guess x)
       (< (abs (- (square guess) x)) 0.000001))
#;7> (sqrt 4)

Error: unbound variable: sqrt-iter

	Call history:

	<syntax>	  (sqrt 4)
	<eval>	  (sqrt 4)
	<eval>	  [sqrt] (sqrt-iter 1.0 x)	<--
#;7> (define (square-iter guess x)
       (if (good-enough? guess x)
	   guess
	   (sqrt-iter (improve guess x) x)))

Note: the following toplevel variables are referenced but unbound:

  sqrt-iter (in square-iter)
#;8> (define (sqrt-iter guess x)
       (if (good-enough? guess x)
	   guess
	   (sqrt-iter (improve guess x) x)))
#;9> (sqrt 4)
2.00000009292229
#;10> (define (sum-squares x y) (+ (* x x) (* y y)))
#;11> (define (pyth x y) (sqrt (sum-squares x y)))
#;12> (pyth 3 2)
3.6055513629176
#;13> 
