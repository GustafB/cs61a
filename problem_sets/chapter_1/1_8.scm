(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve x y)
  (/ (+ (* 2 y)
        (/ x
           (square y)))
     3))

(define (percent-diff x y)
  (/ (abs (- x y))
     x))

(define (good-enough? old-guess new-guess)
  (< (percent-diff old-guess new-guess) 0.000000001))

(define (cube-iter new-guess old-guess x)
  (if (good-enough? old-guess new-guess)
      new-guess
      (cube-iter (improve x new-guess)
                 new-guess
                 x)))

(define (cube-root x)
  (cube-iter 1.0 x x))

(cube-root 10)
