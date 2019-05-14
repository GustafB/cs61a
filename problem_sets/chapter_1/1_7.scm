(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt-iter curr old x)
  (if (good-enough? old curr)
      curr
      (sqrt-iter (improve curr x)
                 curr
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x x))

(define (p-diff x y)
  (/ (abs (- x y))
     x))

(define (good-enough? old-guess new-guess)
  (< (p-diff old-guess new-guess) 0.00000001))

(sqrt 991231231)
