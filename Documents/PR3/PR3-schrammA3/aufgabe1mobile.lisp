
;Blatt 3 aufgabe 1 "mobiles"

;funktioniert nur wenn die liste mit ' quote gebaut wurde, nicht mit back quote
(defun mobilep (lists) 
(if
  (eq (if (listp (second lists )) (mobilep (second lists)) (second lists))
  (if (listp (third lists )) (mobilep (third lists)) (third lists)))
  (+ (first lists)
  (if (listp (second lists )) (mobilep (second lists)) (second lists))
  (if (listp (third lists )) (mobilep (third lists)) (third lists)))
))
;testfälle
;(mobilep '(10 (11 (2 3 3) 8) (9 9 (1 (2 1 2) 4))))
;(mobilep '(10 (11 (2 3 3) 8) (9 9 (1 (2 1 1) 4))))
; (mobilep '(1 (2 3 3)8))


