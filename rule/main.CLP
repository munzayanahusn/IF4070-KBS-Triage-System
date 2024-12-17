;; Templates

;; Input Case Template
(deftemplate new-case
    (multislot symptoms)
    (slot age)
    (slot hr)
    (slot rr)
    (slot spo2)
    (slot pain-scale))

;; Decision Point A
(deftemplate decision-point-a
    (slot case-id)
    (multislot symptoms)
    (slot requires-immediate-lifesaving-intervention (default no)))

;; Decision Point B1
(deftemplate decision-point-b-1
    (slot case-id)
    (multislot symptoms)
    (slot high-risk (default no)))

;; Decision Point B2
(deftemplate decision-point-b-2
    (slot case-id)
    (multislot symptoms)
    (slot confused-lethargic-disoriented (default no)))

;; Decision Point B3
(deftemplate decision-point-b-3
    (slot case-id)
    (slot pain-scale)
    (slot severe-pain (default no)))

;; Decision Point C
(deftemplate decision-point-c
    (slot case-id)
    (multislot symptoms)
    (multislot resources))

;; Decision Point D
(deftemplate decision-point-d
    (slot age)
    (slot hr)
    (slot rr)
    (slot spo2)
    (slot high-risk-vital-sign (default no)))

;; Final Decision Result
(deftemplate decision-result
    (slot point-a (default unchecked))
    (slot point-b (default unchecked))
    (slot point-c (default unchecked))
    (slot point-d (default unchecked))
    (slot final-decision (default Level-5)))

;; Facts Database
(deffacts cases
   (decision-point-a (case-id A) (symptoms a b c) (requires-immediate-lifesaving-intervention yes))
   (decision-point-a (case-id B) (symptoms a c d) (requires-immediate-lifesaving-intervention no))
   (decision-point-b-1 (case-id B1) (symptoms f g) (high-risk yes))
   (decision-point-b-2 (case-id B2) (symptoms h i) (confused-lethargic-disoriented yes))
   (decision-point-b-3 (case-id B3) (pain-scale 7))
   (decision-point-c (case-id C1) (resources x y z))
)

;; Compare Symptoms
(defrule compare-symptoms-point
    ?new <- (new-case (symptoms $?new-symptoms))
    ?case <- (declare-template (template ?template-name))
                (case-id ?id)
                (symptoms $?case-symptoms)
    =>
    (bind ?count 0)

    ;; Count matching symptoms
    (foreach ?sym $?new-symptoms
        (if (member$ ?sym $?case-symptoms) then (bind ?count (+ ?count 1))))
    ;; Store match results dynamically
    (if (> ?count 0)
        then 
            (assert (match-result (case-id ?id)
                                    (matched-count ?count)
                                    (template ?template-name)))))

;; Generalized Rule: Find Best Match for Any Decision Point
(defrule find-best-match-point
    (declare (salience -10))
    ?new <- (new-case)
    ?m1 <- (match-result (case-id ?id1) (matched-count ?count1) (template ?template-name))
    (not (match-result (matched-count ?count2 &:(> ?count2 ?count1))))
    =>
    ;; Display all matches with the highest count
    (printout t "Highest Match Cases for " ?template-name " Found:" crlf)
    (do-for-all-facts ((?m match-result))
        (test (eq ?m:matched-count ?count1))
        (printout t "Case ID: " ?m:case-id crlf))

    ;; User selects one case
    (printout t "Enter your choice (Case ID): ")
    (bind ?chosen-case (read))

    ;; Update the new-case or decision-result dynamically
    (do-for-all-facts ((?m match-result))
        (test (eq ?m:case-id ?chosen-case))
        (if (eq ?template-name "decision-point-a")
            then (modify ?new (point-a ?m:requires-immediate-lifesaving-intervention)))
        (if (eq ?template-name "decision-point-b-1")
            then (modify ?new (point-b high-risk)))
        (if (eq ?template-name "decision-point-b-2")
            then (modify ?new (point-b confused-lethargic-disoriented)))))

;; Rule: Point B3 - Check Severe Pain
(defrule check-severe-pain
    ?new <- (new-case (pain-scale ?pain))
    =>
    (if (> ?pain 6)
        then (assert (decision-point-b-3 (severe-pain yes)))))

;; Rule: Point C - Resource Check
(defrule check-resources-point-c
    ?case <- (decision-point-c (resources $?resources))
    ?res <- (decision-result)
    =>
    (bind ?count (length$ $?resources))
    (if (eq ?count 0)
        then (modify ?res (point-c None) (final-decision Level-5))
        else (if (eq ?count 1)
                    then (modify ?res (point-c One) (final-decision Level-4))
                    else (modify ?res (point-c Many)))))

;; Rule: Point D - High-Risk Vital Signs
(defrule check-high-risk-vital-sign
    ?d <- (decision-point-d (age ?age) (hr ?hr) (rr ?rr))
    ?res <- (decision-result)
    =>
    (bind ?high-risk no)
    (if (or 
            (and (< ?age 1) (> ?hr 190) (> ?rr 60))
            (and (>= ?age 1) (< ?age 12) (> ?hr 180) (> ?rr 55))
            (and (>= ?age 12) (< ?age 36) (> ?hr 140) (> ?rr 40))
            (and (>= ?age 36) (< ?age 60) (> ?hr 120) (> ?rr 35))
            (and (>= ?age 60) (< ?age 144) (> ?hr 120) (> ?rr 30))
            (and (>= ?age 144) (< ?age 216) (> ?hr 100) (> ?rr 20))
            (and (>= ?age 216) (> ?hr 100) (> ?rr 20)))
        then (bind ?high-risk yes))
    (modify ?res (point-d ?high-risk)))

;; Rule: Finalize Decision
(defrule finalize-decision
    ?res <- (decision-result (point-a ?pa) (point-b ?pb) (point-c ?pc) (point-d ?pd))
    =>
    (if (eq ?pa yes) then (modify ?res (final-decision Level-1)))
    (else 
        (if (eq ?pb yes) then (modify ?res (final-decision Level-2)))
        (else 
            (if (eq ?pd yes) then (modify ?res (final-decision Level-2)))))
    ;; Print Final Decision
    (printout t "Final Decision: " ?res:final-decision crlf))
