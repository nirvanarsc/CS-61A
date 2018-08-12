(define (cont-fact n d k)
  (define (recur i)
    (if (> i k)
      0
      (/ (n i) (+ (d i) (recur (+ 1 i))))))
  (recur 1))


; how large must k be for k-term finite continued fraction to be accurate to four decimal places? - 12
