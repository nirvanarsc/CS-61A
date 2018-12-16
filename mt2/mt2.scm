;Problem 1

(every (bf x) '(ab cd ef gh))

;prints an error

(every bf '(ab cd ef gh))

;prints (b d f h)

(cond ('hello 5) (#t 6) (else 7))

;prints 5 => Scheme interprets a non empty string as true similarly to Javascript

(let ((x 10) (y (+ x 2))) (* y 3))

;prints error => variables inside let are scoped i.e. inside the declaration of y there is no access to a variable 'x'

(cons (list '() '(b)) (append '(c) '(d)))

;prints ((() (b)) c d)

((lambda (x) (cons x x)) '(a))

;prints ((a) a)

(cdar '((1 2) (3 4)))

;prints 2

;Problem 2

;false true true false

;Problem 3

;a
;normal order => done
;applicative order => error // infinite loop

;b
;normal order => done
;applicative order => done

;Problem 4
;=> everynth.scm

;Problem 5
;=> pairmap.scm

;Problem 6
;=> sockboy.scm
