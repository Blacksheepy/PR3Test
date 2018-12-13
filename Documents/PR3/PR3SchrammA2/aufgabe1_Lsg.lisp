;PR3 Testat

;a)
(defun rotiere (liste)
	(append
		(cdr liste) (list (car liste))
	)
)

;Test Beispiele
(rotiere `(eins zwei drei vier)) ;->(ZWEI DREI VIER EINS)
(rotiere `(1 2 3 4)) ;->(2 3 4 1)
(rotiere `((1) (2) (3) (4))) ;->((2) (3) (4) (1))

;b)
(defun neues-vorletztes (element liste)
	(append
		(reverse (cdr (reverse liste)))
		(list element)
		(list (car (reverse liste)))
	)
)

;Test Beispiele
(neues-vorletztes `dreieinhalb `(eins zwei drei vier)) ;->(EINS ZWEI DREI DREIEINHALB VIER)
(neues-vorletztes 3.5 `(1 2 3 4)) ;->(1 2 3 3.5 4)

;c)
(defun my-length (liste)
	(loop for x in liste
		sum (+ 1)
	)
)

;Test Beispiele
(my-length `(eins zwei drei vier)) ;->4
(my-length `(1 2 3 4 5)) ;->5
(my-length `((1) (2) (3) (4) (5 6) (7))) ;->6

;d)
(defun my-lengthR (liste)
	(cond ((null liste) 0)
		(T (if (listp (car liste))
				(+ (my-lengthR (car liste)) (my-lengthR (cdr liste)))
				(+ 1 (my-lengthR (cdr liste)))
			)
		)
	)
)

;Test Beispiele
(my-lengthR `(eins zwei (zwei (zwei drei) eins) drei vier)) ;->8
(my-lengthR `(1 2 (2 (2 3) 1) 3 4)) ;->8
(my-lengthR `(1 2 3)) ;->3
(my-lengthR `(1 2 (1 2 3) 5)) ;->6
(my-lengthR `(((1)))) ;->1



;e)
(defun liste-ohne-zahlen (liste)
	(loop for x in liste
		if (not (integerp x))
			collect (append x)		
	)
)

;Test Beispiele
(liste-ohne-zahlen `(1 a b 2 c 4 5)) ;-> (a b c)
(liste-ohne-zahlen `(1 2 3 4 5)) ;-> NIL
(liste-ohne-zahlen `(d e f)) ;-> (d e f)


;f)
(defun funkdef-1arg (fktname op const var)
	(list 'defun fktname (list var) (list op var const))
)

;Test Beispiele
(funkdef-1arg 'add1 '+ 1 'zahl) ;-> (defun add1 (zahl) (+ zahl 1))
(funkdef-1arg 'add2 '+ 2 'zahl) ;-> (defun add2 (zahl) (+ zahl 2))
(funkdef-1arg 'mult3 '* 3 'zahl) ;-> (defun mult3 (zahl) (* zahl 3))

;g)
(defun funkdef-1arg+eval (fktname op const var arg)
	(eval (funkdef-1arg fktname op const var))
	(eval (list fktname arg))
)

;Test Beispiele (Aufgabe f einbinden)
(funkdef-1arg+eval 'add2 '+ 2 'zahl 55) ;-> 57
(funkdef-1arg+eval 'sub5 '- 5 'zahl 55) ;-> 50

;h,a)
(defun listenop1 (operator listA listB)
	(apply operator (list listA listB)) 
)

;Test Beispiele
(listenop1 'list '(3 4) '((c d) (e f))) ;-> ((3 4) ((c d) (e f)))
(listenop1 'append '(3 4) '((c d) (e f))) ;-> (3 4 (c d) (e f))

;h,b)
(defun listenop2 (operator listA listB)
	(funcall operator listA listB)
)

;Test Beispiele
(listenop2 'list '(3 4) '((c d) (e f))) ;-> ((3 4) ((c d) (e f)))
(listenop2 'append '(3 4) '((c d) (e f))) ;-> (3 4 (c d) (e f))


;i,a)
(defun key-unterliste (ausdruck list1)
	(car (member ausdruck list1 :test #'string-equal :key #'first))
)

;Test Beispiele
(key-unterliste 'c '((a 4) (b 9) (c d) (e f))) ;-> (c d)

;i,b "alternative")
(defun key-unterliste2 (ausdruck list1)
	(loop for x in list1
      if (eq (car x) ausdruck)
		do (return x)
    )
)

;Test Beispiele
(key-unterliste2 'c '((a 4) (b 9) (c d) (e f))) ;-> (c d)

;Aufgabe 2)
(defun mobilep (mobile)
	(let (
			(left (if (listp (cadr mobile));Is left a List?
					(mobilep (cadr mobile));Yes! Left is a List -> Recursion on left.
					(cadr mobile);No! Left is not a List -> Save atom.
				)
			)
			(right (if (listp (caddr mobile));Is right a list?
					(mobilep (caddr mobile));Yes! Right is a list -> Recursion on right.
					(caddr mobile);No! Right is not a list -> Save atom.
				)
			)
		)
		(if (null left);Is left nil?
			nil ;Yes! Left is nil -> Return nil
			(if (null right) ;No! Left is not nil -> Is right nil?
				nil ;Yes! Right is nil -> Return nil
				(if (= left right) ;No! Right is not nil -> Are left and right the same?
					(+ left right (car mobile)) ;Yes! Left and right are the same -> Return sum of both and root
					nil ;No! They are not the same -> Return nil
				)
			)
		)
	)
)

;Test Beispiele
(mobilep '(10 (11 (2 3 3) 8) (9 9 (1 (2 1 1) 4)))) ;Testausgabe1 (Balanced -> 64)
(mobilep '(10 (11 (2 3 3) 8) (9 9 (1 (2 1 2) 4)))) ;Testausgabe2 (Unbalanced -> nil)