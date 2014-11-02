;; Creates an new interactive buffer for music from SomaFM;;

;; Have these at top in case they need editing. ;;
(setq chop '"http://xstream1.somafm.com:8062")  ;; Cliqhop
(setq dubs '"http://uwstream2.somafm.com:8406") ;; Dubstep Beyond
(setq 7iso '"http://uwstream2.somafm.com:7770") ;; Seven Inch Soul
(setq doom '"http://xstream1.somafm.com:8300")  ;; Doomed

;; set each station as a function to allow auto-complete fills ;;
(defun eplayer-cliqhop (station)
  "start a cliqhop direct stream in new buffer"
  (message "Soma FM's Cliqhop")
  (interactive "p")
      (start-process "cliqhop"
		     "cliqhop"
		     "mpg123"
		     "%s" chop))

(defun eplayer-dubstep (station)
  "start a dubstep byeond radio stream in new buffer"
  (message "Soma FM's Dubstep Beyond")
  (interactive "p")
      (start-process "dubstep"
		     "dubstep_beyond"
		     "mpg123"
		     "%s" dubs))

(defun eplayer-7inchsoul (station)
  "start a seven inch soul radio stream in new buffer"
  (message "Soma FM's Seven Inch Soul")
  (interactive "p")
      (start-process "7inch_soul"
		     "7inch_soul"
		     "mpg123"
		     "%s" 7iso))

(defun eplayer-doomed (station)
  "start a Doomed radio stream in new buffer"
  (message "Soma FM's Seven Inch Soul")
  (interactive "p")
      (start-process "Doomed"
		     "Doomed"
		     "mpg123"
		     "%s" doom))
