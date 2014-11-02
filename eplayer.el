;; Create an interactive setup for music stream in a new buffer ;;

;; Final call should be:
;; (start-process "cliquehop" "cliquehop" "mpg123" "http://xstream1.somafm.com:8062")


;; TODO: Currently auto-plays, needs to prompt user ;;
(defun eplayer (station) ; interactive version
  "start a radio stream in new buffer"
  (message "1 = cliquehop")
  (interactive "p")
  (if (equal station 1)
      (start-process "cliquehop" "cliquehop" "mpg123" "http://xstream1.somafm.com:8062")(nil)))
