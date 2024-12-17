;;; Rule-based system to check if age, HR, and RR match high-risk criteria.

;;; Facts to test against
(deftemplate vital-sign
   (slot age)   ;; Age as a string (e.g., "3–5 y")
   (slot hr)    ;; Heart rate as a number
   (slot rr))   ;; Respiratory rate as a number

;;; Debug rule to print vital-sign fact
(defrule debug-fact
   (vital-sign (age ?age) (hr ?hr) (rr ?rr))
=>
   (printout t "Debug: Age=" ?age " HR=" ?hr " RR=" ?rr crlf))

;;; Rule to evaluate high-risk criteria for vital signs
(defrule check-all-components
   (vital-sign (age ?age) (hr ?hr) (rr ?rr))
=>
   (if (or 
         (and (eq ?age "< 1 mo") (> ?hr 190) (> ?rr 60))
         (and (eq ?age "1–12 mo") (> ?hr 180) (> ?rr 55))
         (and (eq ?age "1–3 y") (> ?hr 140) (> ?rr 40))
         (and (eq ?age "3–5 y") (> ?hr 120) (> ?rr 35))
         (and (eq ?age "5–12 y") (> ?hr 120) (> ?rr 30))
         (and (eq ?age "12–18 y") (> ?hr 100) (> ?rr 20))
         (and (eq ?age "> 18 y") (> ?hr 100) (> ?rr 20)))
      then
         (bind ?level 2)  ;; Bind the level to 3 for non-high-risk
         (printout t "Level: " ?level crlf)
         (printout t "All components match a high-risk criteria." crlf)
      else
         (bind ?level 3)  ;; Bind the level to 3 for non-high-risk
         (printout t "Level: " ?level crlf)
         (printout t "Components do NOT match a high-risk criteria." crlf)))