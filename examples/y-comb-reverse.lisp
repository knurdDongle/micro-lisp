(let ((Y (lambda (fn)
            ((lambda (h) (h h))
               (lambda (g)
                 (fn (lambda (x y)
                    ((g g) x y))))))))

   (let ((reverse (Y (lambda(f)
                       (lambda (a l)
                         (cond ((null? l) a)
                               ((quote t) (f (cons (car l) a) (cdr l)))))))))
      (reverse (quote ()) (quote (1 2 3 4 5 6 7 8 9)))))
