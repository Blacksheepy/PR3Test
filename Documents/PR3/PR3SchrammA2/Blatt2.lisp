;Aufgabe 1a liste umkehren
(defun myreverse (liste)
	(cond ((null liste) liste)
		(T (append (myreverse (cdr liste)) (list (car liste))))
	)
)

;Aufgabe 1b Geschachtelte Listen umkehren
;ohne list bei append wird liste platt gemacht, also unterlisten aufgelöst
(defun myreverseN (liste)
	(cond ((null liste) liste)
		((listp (car liste)) (append (myreverseN (cdr liste)) (list (myreverseN (car liste)))))
		(T (append (myreverseN (cdr liste)) (list (car liste))))
	)
)

; Aufgabe 1c Elemente tauschen
(defun rotiere(li)
(append (cdr li)(list (car li))))

; Aufgabe 1d Element einfügen

(defun neues-vorletztes( lis)
 )

;Aufgabe 1e Länge einer Liste berechnen

(defun my-length (list)
  (if list
    (+ 1(my-len (cdr list))) ;if the list or element is not null,  call function recursively and add one
    0)); else zero

; Aufgabe 1f Länge einer geschachtelten Liste berechnen
(defun my-lengthR(list)
)
