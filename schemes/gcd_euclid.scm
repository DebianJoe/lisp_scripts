;; Determines Greatest Common Denominator
;; Using Euclid's Algorithm
(define (gcd a b)
(if (= b 0)
    a
    (gcd b (remainder a b))))
