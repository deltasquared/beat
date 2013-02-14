;; This is a program to find the
;; Current Swatch Internet Time

(defun beat ()
  (multiple-value-bind (beat)
      (round
       (multiple-value-bind (s m h) (get-decoded-time)
         (/ (+ s (* 60 m) (* 3600 (+ 1 h))) 86.4)))
    (mod beat 1000)))

(defun main ()
  (format t "@ ~D~%" (beat)))
