(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a)
              (accumulate combiner null-value term (next a) next b))))

(define (identity n) n)

(define (inc n) (+ n 1))

(define (sum-acc a b)
  (accumulate + 0 identity a inc b))

(define (prod-acc a b)
  (accumulate * 1 identity a inc b))
