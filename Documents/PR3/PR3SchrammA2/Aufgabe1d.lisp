
1d)
Schreiben Sie eine Funktion neues-vorletztes, die ein Element und eine Liste als Argument erhält und
eine neue Liste zurückliefert, in der das Element als neues vorletztes Element in die Liste eingefügt wird


// Für jede größe der Liste
// 1. Version
(defun neues-vorletztes (liste element)
  (setf tmp (reverse liste))
  (setf saveFirstElemListe (list(car tmp)))
  (setf tmp1 (cdr tmp))
  (setf tmp2 (cons element tmp1))
  (setf BacktoNormal (reverse tmp2))
  (append BacktoNormal saveFirstElemListe)
)

//2. Version
//Dreht die Liste um, speichert das erste Element der umgedrehten Liste, speichert alle restlichen Elemente außer dem Ersten
//der Liste, fügt element hinzu, fügt das gespeicherte erste Element an, dreht die Liste wieder um.
(defun neues-vorletztes (liste element)
  (setf ReverseListe (reverse liste))
  (setf saveFirstElemListe (list(car ReverseListe)))
  (setf SaveAllOtherListElem (cdr ReverseListe))
  (setf addElem (cons element SaveAllOtherListElem))
  (setf CompleteList(append saveFirstElemListe addElem))
  (reverse CompleteList)
)

(defun neues-vorletztes (liste element)
  (reverse(append(list(car(reverse liste))) (cons element(cdr(reverse liste)))))
)

(neues-vorletztes '(1 2 3 4) 20)
