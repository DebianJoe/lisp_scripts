;; Creates an new interactive buffer for music from SomaFM;;

;; Have these at top in case they need editing.   ;;

(setq u80s '"http://xstream1.somafm.com:8880")    ;; Underground Eighties
(setq chop '"http://xstream1.somafm.com:8062")    ;; Cliqhop
(setq dubs '"http://uwstream2.somafm.com:8406")   ;; Dubstep Beyond
(setq 7iso '"http://uwstream2.somafm.com:7770")   ;; Seven Inch Soul
(setq doom '"http://xstream1.somafm.com:8300")    ;; Doomed
(setq suni '"http://uwstream2.somafm.com:8600")   ;; Sonic Universe
(setq agnt '"http://xstream1.somafm.com:8002")    ;; Secret Agent
(setq ipop '"http://uwstream3.somafm.com:8090")   ;; Indy Pop Rocks
(setq ffor '"http://xstream1.somafm.com:7400")    ;; Folk Forward
(setq bagr '"http://uwstream3.somafm.com:9090")   ;; BAGeL Radio
(setq digi '"http://xstream1.somafm.com:8900")    ;; Digitalis
(setq grsl '"http://uwstream1.somafm.com:80")     ;; Groove Salad
(setq lush '"http://uwstream2.somafm.com:8800")   ;; Lush
(setq spss '"http://uwstream3.somafm.com:8000")   ;; Space Station Soma
(setq trip '"http://xstream1.somafm.com:2504")    ;; The Trip
(setq earw '"http://uwstream3.somafm.com:5100")   ;; Earwaves
(setq mico '"http://uwstream3.somafm.com:2020")   ;; Mission Control
(setq bliq '"http://uwstream2.somafm.com:9004")   ;; Boot Liquor
(setq covr '"http://uwstream3.somafm.com:8700")   ;; Covers
(setq ilsl '"http://xstream1.somafm.com:8500")    ;; Illinois Street Lounge
(setq dsp1 '"http://xstream1.somafm.com:2800")    ;; DeepSpace One
(setq popt '"http://xstream1.somafm.com:2200")    ;; PopTron
(setq subu '"http://xstream1.somafm.com:8850")    ;; Suburbs of Goa

;; set each station as a function to allow auto-complete fills ;;

(defun eplayer-suburbs_goa (station)
  "start a SomaFM Suburbs of Goa (world beat) direct stream in new buffer"
  (message "Soma FM's Suburbs of Goa, Worldbeat inspired")
  (interactive "p")
      (start-process "Suburbs of Goa"
		     "Suburbs of Goa"
		     "mpg123"
		     "%s" subu))

(defun eplayer-poptron (station)
  "start a SomaFM PopTron (electropop) direct stream in new buffer"
  (message "Soma FM's PopTron, electropop")
  (interactive "p")
      (start-process "PopTron"
		     "PopTron"
		     "mpg123"
		     "%s" popt))

(defun eplayer-deepspace1 (station)
  "start a SomaFM Deep Space One (deep ambient) direct stream in new buffer"
  (message "Soma FM's Deep Space One, space out")
  (interactive "p")
      (start-process "Deep_Space_1"
		     "Deep_Space_1"
		     "mpg123"
		     "%s" dsp1))

(defun eplayer-illinois_street (station)
  "start a SomaFM Illinois Street lounge (lounge music) direct stream in new buffer"
  (message "Soma FM's Illinois Street Lounge")
  (interactive "p")
      (start-process "IL Street Lounge"
		     "IL Street Lounge"
		     "mpg123"
		     "%s" ilsl))

(defun eplayer-underground_80s (station)
  "start a SomaFM Underground Eighties (new wave) direct stream in new buffer"
  (message "Soma FM's Underground 80s, Wavy")
  (interactive "p")
      (start-process "Underground 80s"
		     "Underground 80s"
		     "mpg123"
		     "%s" u80s))

(defun eplayer-cliqhop (station)
  "start a SomaFM Cliqhop (idm) direct stream in new buffer"
  (message "Soma FM's Cliqhop")
  (interactive "p")
      (start-process "cliqhop"
		     "cliqhop"
		     "mpg123"
		     "%s" chop))

(defun eplayer-dubstep (station)
  "start a Soma FM Dubstep Beyond (bass music) radio stream in new buffer"
  (message "Soma FM's Dubstep Beyond")
  (interactive "p")
      (start-process "dubstep"
		     "dubstep_beyond"
		     "mpg123"
		     "%s" dubs))

(defun eplayer-7inchsoul (station)
  "start a Soma FM Seven Inch Soul (off of 45's) radio stream in new buffer"
  (message "Soma FM's Seven Inch Soul, music off 45s")
  (interactive "p")
      (start-process "7inch_soul"
		     "7inch_soul"
		     "mpg123"
		     "%s" 7iso))

(defun eplayer-doomed (station)
  "start a Soma FM Doomed (industrial and darker ambient) radio stream in new buffer"
  (message "Soma FM's Doomed, Industrial Madness")
  (interactive "p")
      (start-process "Doomed"
		     "Doomed"
		     "mpg123"
		     "%s" doom))

(defun eplayer-sonic_universe (station)
  "start a Soma FM Sonic Universe radio stream in new buffer"
  (message "Soma FM's Sonic Universe, Transcending Jazz")
  (interactive "p")
      (start-process "Sonic_Universe"
		     "Sonic_Universe"
		     "mpg123"
		     "%s" suni))

(defun eplayer-secretagent (station)
  "start a Soma FM Secret Agent radio stream in new buffer"
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

(defun eplayer-bagel_radio (station)
  "start a Soma FM BAGeL Radio (Alt Rock) radio stream in new buffer"
  (message "Soma FM's BAGeL Radio, Alt Rock")
  (interactive "p")
      (start-process "BAGeL_radio"
		     "BAGeL_radio"
		     "mpg123"
		     "%s" bagr))

(defun eplayer-digitalis (station)
  "start a Soma FM Digitalis (screengaze) radio stream in new buffer"
  (message "Soma FM's Digitalis, Digitalized Rock")
  (interactive "p")
      (start-process "Digitalis"
		     "Digitalis"
		     "mpg123"
		     "%s" digi))

(defun eplayer-groove_salad (station)
  "start a Soma FM Groove Salad (downtempo beats) radio stream in new buffer"
  (message "Soma FM's Groove Salad")
  (interactive "p")
      (start-process "Groove Salad"
		     "Groove Salad"
		     "mpg123"
		     "%s" grsl))

(defun eplayer-lush (station)
  "start a Soma FM Lush (mellow/chilled) radio stream in new buffer"
  (message "Soma FM's Lush, mellow and chill")
  (interactive "p")
      (start-process "Lush"
		     "Lush"
		     "mpg123"
		     "%s" lush))

(defun eplayer-space_station (station)
  "start a Soma FM Space Station Soma (ambient) radio stream in new buffer"
  (message "Soma FM's Space Station Soma, ambient")
  (interactive "p")
      (start-process "Space Station"
		     "Space Station"
		     "mpg123"
		     "%s" spss))

(defun eplayer-the_trip (station)
  "start a Soma FM The Trip (trance) radio stream in new buffer"
  (message "Soma FM's The Trip, Progressive Trance")
  (interactive "p")
      (start-process "the Trip"
		     "the Trip"
		     "mpg123"
		     "%s" trip))

(defun eplayer-earwaves (station)
  "start a Soma FM Earwaves (experimental elec) radio stream in new buffer"
  (message "Soma FM's Earwaves, Experimental Electronica")
  (interactive "p")
      (start-process "Earwaves"
		     "Earwaves"
		     "mpg123"
		     "%s" earw))

(defun eplayer-mission_control (station)
  "start a Soma FM Mission Control (Space Music) radio stream in new buffer"
  (message "Soma FM's Mission Control, Celebrating Space Explorers")
  (interactive "p")
      (start-process "Mission Control"
		     "Mission Control"
		     "mpg123"
		     "%s" mico))

(defun eplayer-boot_liquor (station)
  "start a Soma FM Boot Liquor (Country Music) radio stream in new buffer"
  (message "Soma FM's Boot liquor, Music for Cowpokes")
  (interactive "p")
      (start-process "Boot Liquor"
		     "Boot Liquor"
		     "mpg123"
		     "%s" bliq))

(defun eplayer-covers (station)
  "start a Soma FM Covers (all remakes) radio stream in new buffer"
  (message "Soma FM's Covers, Creative Remakes")
  (interactive "p")
      (start-process "Covers"
		     "Covers"
		     "mpg123"
		     "%s" covr))

