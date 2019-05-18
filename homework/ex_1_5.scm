(define (ends-e? word)
  (if (equal? (last word) 'e)
      #t
      #f))

;; recursive
(define (ends-e words)
  (define (iter words l)
    (cond ((null? words) l)
          ((ends-e? (last (first words)))
           (iter (bf words) (cons (first words) l)))
          (else (iter (bf words) l))))
  (iter words '()))

;; iterative
(define (ends-e words)
  (cond ((empty? words) words)
        ((ends-e? (first words))
         (cons (first words)
               (ends-e (bf words))))
        (else (ends-e (bf words)))))
