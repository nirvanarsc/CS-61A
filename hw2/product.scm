(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))

(define (inc n) (+ n 1))

(define (inc-2 n) (+ n 2))

(define (identity n) n)

(define (square n) (* n n))

;factorial in terms of product:
(define (fact a b)
  (product identity a inc b))

;we deal with the series as 4*4*6*6.../3*3*5*5...
;so we need to deal with the leading factor of 2 separately and also need 
;to divide by the limit the upper coefficient since
;we are squaring one extra time
(define (sum-pi a)
  (*
    (/
      (/
        (* 2 (product square 4 inc-2 (* 2 (+ a 1))))
        (* 2 (+ a 1)))
      (product square 3 inc-2 (+ 1 (* a 2))))
    4))
