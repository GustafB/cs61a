(define (square x)
  (* x x))

(define (squares lst)
  (if (empty? lst)
   lst
   (cons (square (first lst))
         (squares (bf lst)))))
