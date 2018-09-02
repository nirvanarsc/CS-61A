(define (cc-p amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc-p amount
                       (- kinds-of-coins 1))
                 (cc-p (- amount
                          (first-denomination-p kinds-of-coins))
                       kinds-of-coins)))))

(define (first-denomination-p kinds-of-coins)
  kinds-of-coins)

(define (number-of-partitions n)
  (cc-p n n))
