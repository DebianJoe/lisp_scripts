(define (palindrome? our_word)
  (define (is_palindrome begin end)
    (if (>= begin end) 1
        (and (char=? (string-ref our_word begin) (string-ref our_word end))
             (is_palindrome (+ 1 begin) (- end 1)))))
  (is_palindrome 0 (- (string-length our_word) 1)))
(let ((argv (car (command-line-arguments))))
  (print 
   (string-append argv 
                  (if (palindrome? argv) 
    " --\033[1;32mIS a palindrome\033[1;m\n"
    " --\033[1;31mIS NOT a palindrome\033[1;m\n"))))
