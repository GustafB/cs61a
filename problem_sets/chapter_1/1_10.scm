(define (aker x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (aker (- x 1)
                    (aker x (- y 1))))))

(aker 1 10)
(aker 2 4)
(aker 3 3)

(define (f n) (aker 0 n)) ;; 2n
(define (g n) (aker 1 n)) ;; 2^n
(define (h n) (aker 2 n)) ;; 2 ^ 2 ^ 2
