(define (square x)
  (* x x))

(define (even? x)
  (= (remainder x 2) 0))

(define (every proc lst)
  (if (empty? lst)
      lst
      (cons (proc (first lst))
            (every proc (bf lst)))))

(every square '(1 2 3 4 5))
(every even '(1 2 3 4 5 6))
