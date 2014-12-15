;; Linear Method
(define (fib n)
  (define count 0)
  (let loop
      ((a 0)(b 1)(count n))
    (if (= count 0)
	a
	(loop b (+ a b) (- count 1)))))

(fib 100000)
