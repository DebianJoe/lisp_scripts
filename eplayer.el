;; Creates an new interactive buffer for music from SomaFM;;

;; Have these at top in case they need editing. ;;
(setq chop '"http://xstream1.somafm.com:8062")  ;; Cliqhop
(setq dubs '"http://uwstream2.somafm.com:8406") ;; Dubstep Beyond
(setq 7iso '"http://uwstream2.somafm.com:7770") ;; Seven Inch Soul
(setq doom '"http://xstream1.somafm.com:8300")  ;; Doomed
(setq suni '"http://uwstream2.somafm.com:8600") ;; Sonic Universe
(setq agnt '"http://xstream1.somafm.com:8002")  ;; Secret Agent
(setq ipop '"http://uwstream3.somafm.com:8090") ;; Indy Pop Rocks
(setq ffor '"http://xstream1.somafm.com:7400")  ;; Folk Forward

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
  "start a seven inch soul (off of 45's) radio stream in new buffer"
  (message "Soma FM's Seven Inch Soul, music off 45s")
  (interactive "p")
      (start-process "7inch_soul"
		     "7inch_soul"
		     "mpg123"
		     "%s" 7iso))

(defun eplayer-doomed (station)
  "start a Doomed (industrial and darker ambient) radio stream in new buffer"
  (message "Soma FM's Doomed, Industrial Madness")
  (interactive "p")
      (start-process "Doomed"
		     "Doomed"
		     "mpg123"
		     "%s" doom))

(defun eplayer-sonic (station)
  "start a Sonic Universe radio stream in new buffer"
  (message "Soma FM's Sonic Universe, Transcending Jazz")
  (interactive "p")
      (start-process "Sonic_Universe"
		     "Sonic_Universe"
		     "mpg123"
		     "%s" suni))

(defun eplayer-secretagent (station)
  "start a Secret Agent radio stream in new buffer"
  (message "Soma FM's Secret Agent, songs for spies")
  (interactive "p")
      (start-process "Secret_Agent"
		     "Secret_Agent"
		     "mpg123"
		     "%s" agnt))

(defun eplayer-indy_pop (station)
  "start an Indy Pop Rocks (independent pop/rock) radio stream in new buffer"
  (message "Soma FM's Indy Pop Rocks, independent pop and rock")
  (interactive "p")
      (start-process "Indy_Pop"
		     "Indy_Pop"
		     "mpg123"
		     "%s" ipop))

(defun eplayer-folk_forward (station)
  "start a Soma FM Folk Forward (Indy Alt Folk) radio stream in new buffer"
  (message "Soma FM's Folk Forward, Indy Alt Folk")
  (interactive "p")
      (start-process "Folk_Forward"
		     "Folk_Forward"
		     "mpg123"
		     "%s" ffor))
