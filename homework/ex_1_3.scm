(define (sw-wrd word n)
  (cond ((and (= n 0) (equal? 'you word)) 'i)
        ((or (equal? word 'me) (equal? word 'i)) 'you)
        ((equal? word 'you) 'me)
        (else word)))


(define (switch words n)
  (cond ((empty? words)
         words)
        (else
         (cons (sw-wrd (first words) n)
               (switch (bf words) (+ 1 n))))))


;; (define (add-last lst ele)
;;   (cond ((empty? lst)
;;          (list ele))
;;         (else
;;          (cons (first lst)
;;                (add-last (bf lst) ele)))))
