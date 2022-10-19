(define-data-var counter int 1)

(define-private (increment)
  (begin
    (var-set counter (+ (var-get counter) 2))
    (ok (var-get counter))))

(define-private (decrement)
  (begin
    (var-set counter (- (var-get counter) 3))
    (ok (var-get counter))))

(define-read-only (get-counter)
  (var-get counter))

(define-private (is-odd (p int))
  (if (is-eq (mod p 2) 0)
    false
    true))

(define-public (countered (p int))
  (if (is-odd p)
    (increment)
    (decrement)))

(define-public (reset)
    (ok (var-set counter 0)))
