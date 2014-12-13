;; Not needed
(define (word-to-check s)
  (string-split s))

(define (rotate-left lst)
  (if (null? lst)
      '()
      (append (cdr lst)
	      (cons (car lst)
		    '()))))

;; Using these and (reverse '(l s t))
;; a length, and iterater, this should be doable.
