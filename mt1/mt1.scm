;Problem 1

(every - (keep number? '(the 1 after 909)))

;prints (-1 -909)

((lambda (a b) ((if (< b a) + *) b a)) 4 6)

;prints 24

(word (first '(cat)) (butlast 'dog))

;prints catdo

(cons (list 1 2) (cons 3 4))

;prints ((1 2) 3 . 4)

(let ((p (list 4 5))) (cons (cdr p) (cddr p)))

;prints ((5))

(cadadr '((a (b) c) (d (e) f) (g (h) i)))

;missing a closing bracket, if added will print (e)

;Problem 2

;(a) O(1)

;(b) O(n^2)

;Problem 3

;applicative -> 2
;normal -> 2

;Problem 4

;#1, #2

;Problem 5

;=> syllables.scm

;Problem 6

;=> order.scm

;Problem 7

;=> adt.scm
