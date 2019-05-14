(define (f-linear x)
  (if (= x 1)
      1
      (* x (f-linear (- x 1)))))

(define (f-iter x)
  (define (iter count prod)
    (if (= count 1)
        prod
        (iter (- count 1)
              (* prod count))))
  (iter x 1))

(f-linear 5)
(f-iter 5)
