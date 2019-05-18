(define (ordered? lst)
  (cond ((empty? lst) #t)
        ((empty? (bf lst)) #t)
        ((> (first lst)
            (first (bf lst))) #f)
        (else
         (ordered? (bf lst)))))
