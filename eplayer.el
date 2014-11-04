;; Creates an new interactive buffer for music from SomaFM      ;;
;; if you find this useful, and want to help...donate to somafm ;;
;; because they're the ones who keep the servers running        ;;
;; @ www.somafm.com                                             ;;

;; Have these at top in case they need editing.   ;;

(setq u80s '"http://somafm.com/u80s.pls")          ;; Underground Eighties
(setq chop '"http://somafm.com/cliqhop.pls")       ;; Cliqhop
(setq dubs '"http://somafm.com/dubstep.pls")       ;; Dubstep Beyond
(setq 7iso '"http://somafm.com/7soul.pls")         ;; Seven Inch Soul
(setq doom '"http://somafm.com/doomed.pls")        ;; Doomed
(setq suni '"http://somafm.com/sonicuniverse.pls") ;; Sonic Universe
(setq agnt '"http://somafm.com/secretagent.pls")   ;; Secret Agent
(setq ipop '"http://somafm.com/indiepop.pls")      ;; Indy Pop Rocks
(setq ffor '"http://somafm.com/folkfwd.pls")       ;; Folk Forward
(setq bagr '"http://somafm.com/bagel.pls")         ;; BAGeL Radio
(setq digi '"http://somafm.com/digitalis.pls")     ;; Digitalis
(setq grsl '"http://somafm.com/groovesalad.pls")   ;; Groove Salad
(setq lush '"http://somafm.com/lush.pls")          ;; Lush
(setq spss '"http://somafm.com/spacestation.pls")  ;; Space Station Soma
(setq trip '"http://somafm.com/thetrip.pls")       ;; The Trip
(setq earw '"http://somafm.com/earwaves.pls")      ;; Earwaves
(setq mico '"http://somafm.com/missioncontrol.pls");; Mission Control
(setq bliq '"http://somafm.com/bootliquor.pls")    ;; Boot Liquor
(setq covr '"http://somafm.com/covers.pls")        ;; Covers
(setq ilsl '"http://somafm.com/illstreet.pls")     ;; Illinois Street Lounge
(setq dsp1 '"http://somafm.com/deepspaceone.pls")  ;; DeepSpace One
(setq popt '"http://somafm.com/poptron.pls")       ;; PopTron
(setq subu '"http://somafm.com/suburbsofgoa.pls")  ;; Suburbs of Goa
(setq bebl '"http://somafm.com/beatblender.pls")   ;; Beat Blender
(setq sfpd '"http://somafm.com/sf1033.pls")        ;; SF 10-33

;; set each station as a function to allow auto-complete fills ;;
(defun eplayer-sf_10-33 (station)
  "start a SomaFM SF 10-33 (ambient) direct stream in new buffer"
  (message "Soma FM's SF 10-33, ambient safety traffic")
  (interactive "p")
      (start-process "SF 10-33"
		     "SF 10-33"
		     "mpg123"
		     (concat "-@" sfpd)))


(defun eplayer-beat_blender (station)
  "start a SomaFM Beat Blender (chill) direct stream in new buffer"
  (message "Soma FM's Beat Blender, downtempo and chilled")
  (interactive "p")
      (start-process "Beat Blender"
		     "Beat Blender"
		     "mpg123"
		     (concat "-@" bebl)))

(defun eplayer-suburbs_goa (station)
  "start a SomaFM Suburbs of Goa (world beat) direct stream in new buffer"
  (message "Soma FM's Suburbs of Goa, Worldbeat inspired")
  (interactive "p")
      (start-process "Suburbs of Goa"
		     "Suburbs of Goa"
		     "mpg123"
		     (concat "-@" subu)))

(defun eplayer-poptron (station)
  "start a SomaFM PopTron (electropop) direct stream in new buffer"
  (message "Soma FM's PopTron, electropop")
  (interactive "p")
      (start-process "PopTron"
		     "PopTron"
		     "mpg123"
		     (concat "-@" popt)))

(defun eplayer-deepspace1 (station)
  "start a SomaFM Deep Space One (deep ambient) direct stream in new buffer"
  (message "Soma FM's Deep Space One, space out")
  (interactive "p")
      (start-process "Deep_Space_1"
		     "Deep_Space_1"
		     "mpg123"
		     (concat "-@" dsp1)))

(defun eplayer-illinois_street (station)
  "start a SomaFM Illinois Street lounge (lounge music) direct stream in new buffer"
  (message "Soma FM's Illinois Street Lounge")
  (interactive "p")
      (start-process "IL Street Lounge"
		     "IL Street Lounge"
		     "mpg123"
		     (concat "-@" ilsl)))

(defun eplayer-underground_80s (station)
  "start a SomaFM Underground Eighties (new wave) direct stream in new buffer"
  (message "Soma FM's Underground 80s, Wavy")
  (interactive "p")
      (start-process "Underground 80s"
		     "Underground 80s"
		     "mpg123"
		     (concat "-@" u80s)))

(defun eplayer-cliqhop (station)
  "start a SomaFM Cliqhop (idm) direct stream in new buffer"
  (message "Soma FM's Cliqhop")
  (interactive "p")
      (start-process "cliqhop"
		     "cliqhop"
		     "mpg123"
		     (concat "-@" chop)))

(defun eplayer-dubstep (station)
  "start a Soma FM Dubstep Beyond (bass music) radio stream in new buffer"
  (message "Soma FM's Dubstep Beyond")
  (interactive "p")
      (start-process "dubstep"
		     "dubstep_beyond"
		     "mpg123"
		     (concat "-@" dubs)))

(defun eplayer-7inchsoul (station)
  "start a Soma FM Seven Inch Soul (off of 45's) radio stream in new buffer"
  (message "Soma FM's Seven Inch Soul, music off 45s")
  (interactive "p")
      (start-process "7inch_soul"
		     "7inch_soul"
		     "mpg123"
		     (concat "-@" 7iso)))

(defun eplayer-doomed (station)
  "start a Soma FM Doomed (industrial and darker ambient) radio stream in new buffer"
  (message "Soma FM's Doomed, Industrial Madness")
  (interactive "p")
      (start-process "Doomed"
		     "Doomed"
		     "mpg123"
		     (concat "-@" doom)))

(defun eplayer-sonic_universe (station)
  "start a Soma FM Sonic Universe radio stream in new buffer"
  (message "Soma FM's Sonic Universe, Transcending Jazz")
  (interactive "p")
      (start-process "Sonic_Universe"
		     "Sonic_Universe"
		     "mpg123"
		     (concat "-@" suni)))

(defun eplayer-secretagent (station)
  "start a Soma FM Secret Agent radio stream in new buffer"
  (message "Soma FM's Secret Agent, songs for spies")
  (interactive "p")
      (start-process "Secret_Agent"
		     "Secret_Agent"
		     "mpg123"
		     (concat "-@" agnt)))

(defun eplayer-indy_pop (station)
  "start an Indy Pop Rocks (independent pop/rock) radio stream in new buffer"
  (message "Soma FM's Indy Pop Rocks, independent pop and rock")
  (interactive "p")
      (start-process "Indy_Pop"
		     "Indy_Pop"
		     "mpg123"
		     (concat "-@" ipop)))

(defun eplayer-folk_forward (station)
  "start a Soma FM Folk Forward (Indy Alt Folk) radio stream in new buffer"
  (message "Soma FM's Folk Forward, Indy Alt Folk")
  (interactive "p")
      (start-process "Folk_Forward"
		     "Folk_Forward"
		     "mpg123"
		     (concat "-@" ffor)))

(defun eplayer-bagel_radio (station)
  "start a Soma FM BAGeL Radio (Alt Rock) radio stream in new buffer"
  (message "Soma FM's BAGeL Radio, Alt Rock")
  (interactive "p")
      (start-process "BAGeL_radio"
		     "BAGeL_radio"
		     "mpg123"
		     (concat "-@" bagr)))

(defun eplayer-digitalis (station)
  "start a Soma FM Digitalis (screengaze) radio stream in new buffer"
  (message "Soma FM's Digitalis, Digitalized Rock")
  (interactive "p")
      (start-process "Digitalis"
		     "Digitalis"
		     "mpg123"
		     (concat "-@" digi)))

(defun eplayer-groove_salad (station)
  "start a Soma FM Groove Salad (downtempo beats) radio stream in new buffer"
  (message "Soma FM's Groove Salad")
  (interactive "p")
      (start-process "Groove Salad"
		     "Groove Salad"
		     "mpg123"
		     (concat "-@" grsl)))

(defun eplayer-lush (station)
  "start a Soma FM Lush (mellow/chilled) radio stream in new buffer"
  (message "Soma FM's Lush, mellow and chill")
  (interactive "p")
      (start-process "Lush"
		     "Lush"
		     "mpg123"
		     (concat "-@" lush)))

(defun eplayer-space_station (station)
  "start a Soma FM Space Station Soma (ambient) radio stream in new buffer"
  (message "Soma FM's Space Station Soma, ambient")
  (interactive "p")
      (start-process "Space Station"
		     "Space Station"
		     "mpg123"
		     (concat "-@" spss)))

(defun eplayer-the_trip (station)
  "start a Soma FM The Trip (trance) radio stream in new buffer"
  (message "Soma FM's The Trip, Progressive Trance")
  (interactive "p")
      (start-process "the Trip"
		     "the Trip"
		     "mpg123"
		     (concat "-@" trip)))

(defun eplayer-earwaves (station)
  "start a Soma FM Earwaves (experimental elec) radio stream in new buffer"
  (message "Soma FM's Earwaves, Experimental Electronica")
  (interactive "p")
      (start-process "Earwaves"
		     "Earwaves"
		     "mpg123"
		     (concat "-@" earw)))

(defun eplayer-mission_control (station)
  "start a Soma FM Mission Control (Space Music) radio stream in new buffer"
  (message "Soma FM's Mission Control, Celebrating Space Explorers")
  (interactive "p")
      (start-process "Mission Control"
		     "Mission Control"
		     "mpg123"
		     (concat "-@" mico)))

(defun eplayer-boot_liquor (station)
  "start a Soma FM Boot Liquor (Country Music) radio stream in new buffer"
  (message "Soma FM's Boot liquor, Music for Cowpokes")
  (interactive "p")
      (start-process "Boot Liquor"
		     "Boot Liquor"
		     "mpg123"
		     (concat "-@" bliq)))

(defun eplayer-covers (station)
  "start a Soma FM Covers (all remakes) radio stream in new buffer"
  (message "Soma FM's Covers, Creative Remakes")
  (interactive "p")
      (start-process "Covers"
		     "Covers"
		     "mpg123"
		     (concat "-@" covr)))
