(define-data-var counter int 0)

(define-read-only (get-counter)
  (var-get counter))

(define-public (increment)
  (begin
    (var-set counter (* (var-get counter) 2))
    (ok (var-get counter))))

(define-public (decrement)
  (begin
    (var-set counter (/ (var-get counter) 3))
    (ok (var-get counter))))

(define-public (reset)
    (ok (var-set counter 0))
)
