;; Create an interactive setup for music stream in a new buffer ;;

;; Final call should be:
;; (start-process "cliquehop" "cliquehop" "mpg123" "http://xstream1.somafm.com:8062")

;; Have these at top in case they need editing. ;;
(setq chop '"http://xstream1.somafm.com:8062") ;; Cliqhop
(setq dubs '"http://uwstream2.somafm.com:8406") ;; dubstep beyond

;; set each station as a function to allow auto-complete fills ;;
(defun eplayer-cliqhop (station)
  "start a cliqhop radio stream in new buffer"
  (message "Soma FM's Cliqhop")
  (interactive "p")
      (start-process "cliqhop"
		     "cliqhop"
		     "mpg123"
		     "%s" chop))

(defun eplayer-dubstep (station)
  "start a radio stream in new buffer"
  (message "Soma FM's Dubstep Beyond")
  (interactive "p")
      (start-process "dubstep"
		     "dubstep_beyond"
		     "mpg123"
		     "%s" dubs))
