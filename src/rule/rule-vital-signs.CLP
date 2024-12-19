;;; Rule-based system to check if age, HR, and RR match high-risk criteria.

;;; Facts to test against
(deftemplate vital-sign
   (slot age)   ;; Age as a number (in month)
   (slot hr)    ;; Heart rate as a number
   (slot rr)   ;; Respiratory rate as a number
   (slot spo2))  ;; SpO2 as a number

;;; Debug rule to print vital-sign fact
(defrule debug-fact
   (vital-sign (age ?age) (hr ?hr) (rr ?rr) (spo2 ?spo2))
=>
   (printout t "Debug: Age=" ?age " HR=" ?hr " RR=" ?rr " SpO2=" ?spo2 crlf))

;;; Rule to evaluate high-risk criteria for vital signs
(defrule check-all-components
   (vital-sign (age ?age) (hr ?hr) (rr ?rr) (spo2 ?spo2))
=>
   (if (and (< ?spo2 92) (or 
         (and (< ?age 1) (> ?hr 190) (> ?rr 60))
         (and (>= ?age 1) (< ?age 12) (> ?hr 180) (> ?rr 55))
         (and (>= ?age 12) (< ?age 36) (> ?hr 140) (> ?rr 40))
         (and (>= ?age 36) (< ?age 60) (> ?hr 120) (> ?rr 35))
         (and (>= ?age 60) (< ?age 144) (> ?hr 120) (> ?rr 30))
         (and (>= ?age 144) (< ?age 216) (> ?hr 100) (> ?rr 20))
         (and (>= ?age 216) (> ?hr 100) (> ?rr 20))))
      then
         (bind ?level 2)  ;; Bind the level to 3 for non-high-risk
         (printout t "Level: " ?level crlf)
         (printout t "All components match a high-risk criteria." crlf)
      else
         (bind ?level 3)  ;; Bind the level to 3 for non-high-risk
         (printout t "Level: " ?level crlf)
         (printout t "Components do NOT match a high-risk criteria." crlf)))