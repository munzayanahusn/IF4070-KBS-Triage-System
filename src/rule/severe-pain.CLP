(defrule check-severe-pain
    ?res <- (decision-result 
                (point-a false) 
                (point-b3 unchecked)
                (final-decision ?fd&:(eq ?fd "Level-3")))
    ?new <- (new-case)
    =>
    (printout t "Masukkan skala nyeri pasien (0-10): ")
    (bind ?pain-input (read))
    
    ;; Validate input range
    (while (or (< ?pain-input 0) (> ?pain-input 10)) do
        (printout t "Nilai tidak valid. Masukkan skala nyeri (0-10): ")
        (bind ?pain-input (read)))
    
    ;; Modify the new-case fact to include pain scale
    (modify ?new (pain-scale ?pain-input))
    
    ;; Determine if pain is severe (>6)
    (if (> ?pain-input 6) then
        (modify ?res (point-b3 true))
        (printout t "Pasien mengalami NYERI BERAT." crlf)
    else
        (modify ?res (point-b3 false))
        (printout t "Pasien mengalami NYERI RINGAN/SEDANG." crlf)
    )
)