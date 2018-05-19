(define (dupls-removed sentence)
  (cond ((empty? sentence) '())
        (else 
          (if (member? (first sentence) (bf sentence)) (dupls-removed (bf sentence))
            (se (first sentence) (dupls-removed(bf sentence)))))))
