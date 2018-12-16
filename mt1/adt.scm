(define (time-print-form time)
  (word (hour time) ': (two-digit (minute time)) (category time)))

(define (two-digit num)
  (if (< num 10)
    (word 0 num)
    num))

(define (24-hour time)
  (+ (* (hour time) 100)
     (minute time)
     (if (equal? (category time) 'pm) 1200 0)))

(define (make-time hr min cat)
  (+ (* hr 100)
     min
     (if (equal? cat 'pm) 1200 0)))

(define (hour time)
  (if (>= time 1200)
    (- (div time 100) 12)
    (div time 100)))

(define (minute time)
  (remainder time 100))

(define (category time)
  (if (>= time 1200) 'pm 'am))
