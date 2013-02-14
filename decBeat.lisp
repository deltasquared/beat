; Find the decimal time
(defun decTime(offset)
  (multiple-value-bind (s m h) (get-decoded-time)
    (/
     (+ s (* 60 m) (* 3600 (+ offset h)))
     8640.0)))

; Find the beat-time where a beat is defined as
; 1 / 1000 of a day
(defun beat ()
  (multiple-value-bind (beat)
      (round (* 100 (decTime 1))) (mod beat 1000)))
