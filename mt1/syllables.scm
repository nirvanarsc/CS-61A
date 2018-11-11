(define (vowel? letter)
  (member? letter '(a e i o u)))

(define (syllables str)
  (syllables-helper str 0))

(define (syllables-helper str n)
  (if (equal? str "")
    n
    (if (vowel? (first str))
      (syllables-helper (bf str) (+ n 1))
      (syllables-helper (bf str) n))))

(define (syll-2 wd)
  (define (s1 wd was-cons)
    (cond ((empty? wd) 0)
          ((vowel? (first wd)) (+ was-cons (s1 (bf wd) 0)))
          (else (s1 (bf wd) 1))))
  (s1 wd 1))
