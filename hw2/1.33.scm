(define (filtered-accumulate filter combiner null-value term a next b)
  (if (> a b)
    null-value
    (if (filter a)
      (combiner (term a)
                (filtered-accumulate filter combiner null-value term (next a) next b))
      (filtered-accumulate filter combiner null-value term (next a) next b))))

;prime checker
(define (prime? n)
  (define (F n i)
    (cond ((< n (* i i)) #t)
          ((zero? (remainder n i)) #f)
          (else 
            (F n (+ i 1)))))
  (cond ((< n 2) #f)
        (else 
          (F n 2))))

;GCD algorithm
(define (gcd a b)
  (cond [(= b 0) a]
        [else (gcd b (modulo a b))]))

(define (relative-prime? a b)
  (= (gcd a b) 1))

;1.33a

(define (square n) (* n n))

(define (identity n) n)

(define (inc n) (+ n 1))

(define (sum-square-primes a b)
  (filtered-accumulate prime? + 0 square a inc b))

;1.33b
(define (prod-gcd a b)
  (define (filter n)
    (relative-prime? n b))
  (filtered-accumulate filter * 1 identity a inc b))
