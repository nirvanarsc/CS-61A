(define (cont-fact n d k)
  (define (recur i)
    (if (> i k)
      0
      (/ (n i) (+ (d i) (recur (+ 1 i))))))
  (recur 1))

(define (cont-frac-golden-ratio k)
  (cont-fact (lambda (i) 1.0) (lambda (i) 1.0) k))

(define (cont-frac-e k)
  (cont-fact (lambda (i) 1.0) (lambda (i)
                                (if (= 2 (modulo i 3))
                                  (inc-2 i)
                                  1)) k))

(define (inc-2 i)
  (- i (/ (- i 2) 3)))
