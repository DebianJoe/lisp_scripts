;; Linear Mutable
(define (fib n) (define index 0)
  (do ((a 0) (b 1) (c 1))
      ((> index n) a)
    (set! c (+ a b))
    (set! a b)
    (set! b c)
    (set! index (+ index 1))))

(fib 100000)
