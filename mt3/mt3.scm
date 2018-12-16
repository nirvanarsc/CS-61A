;Problem 1

(first '(help!))

;prints "help!"

((word 'but 'first) 'plop)

;prints error

(let ((+ -)
      (- +))
  (- 8 2))

;prints 10

(list (append '(a b) '()) (cons '(a b) '(c)))

;prints ((a b) ((a b) c))

(filter (lambda (x) (if (list? x) (pair? x) (number? x)))
        '(1 () (2 3) (so) what))

;prints (1 (2 3) (so))

(cddadr '((a b c d e) (f g h i j) (l m n o p) (q r s t u)))

;prints (h i j)

;Problem 2
;B and C

;Problem 3
;=> lg.scm

;Problem 4
;C

;Problem 5
;=> mad-libs.scm

;Problem 6
;=> TODO

;Problem 7
;=> TODO
