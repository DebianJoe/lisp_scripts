;; A series of loadable functions desigend to help with formatting ;;
;; github-flavored markdown ;;

(defun strikethrough (start end)
  "Insert a strikethrough in selected region"
  (interactive "r")
  (save-excursion
    (goto-char end) (insert "~~")
    (goto-char start) (insert "~~")
    ))

(defun code (start end)
  "Take selected text, put in codeblock"
  (interactive "r")
  (save-excursion
    (goto-char end) (insert "\n```\n")
    (goto-char start) (insert "```\n")
    ))

(defun bold (start end)
  "Take selected text, put in codeblock"
  (interactive "r")
  (save-excursion
    (goto-char end) (insert "**")
    (goto-char start) (insert "**")
    ))

(defun italic (start end)
  "Take selected text, put in codeblock"
  (interactive "r")
  (save-excursion
    (goto-char end) (insert "*")
    (goto-char start) (insert "*")
    ))

;; Header Insertions ;;
(defun H1 ()
  "Insert Largest Header at start of line"
  (interactive)
  (save-excursion
    (goto-char (line-beginning-position)) (insert "# ")
    ))
(defun H2 ()
  "Insert an H2 Header at start of line"
  (interactive)
  (save-excursion
    (goto-char (line-beginning-position)) (insert "## ")
    ))
(defun H3 ()
  "Insert an H3 Header at start of line"
  (interactive)
  (save-excursion
    (goto-char (line-beginning-position)) (insert "### ")
    ))
(defun H4 ()
  "Insert an H4 Header at start of line"
  (interactive)
  (save-excursion
    (goto-char (line-beginning-position)) (insert "#### ")
    ))
(defun H5 ()
  "Insert an H5 Header at start of line"
  (interactive)
  (save-excursion
    (goto-char (line-beginning-position)) (insert "##### ")
    ))
(defun H6 ()
  "Insert an H6 Header at start of line"
  (interactive)
  (save-excursion
    (goto-char (line-beginning-position)) (insert "###### ")
    ))

(defun blockquote ()
  "make a section into a blockquote"
  (interactive)
  (save-excursion
    (goto-char (line-beginning-position)) (insert "> ")
    ))

(defun linebreak ()
  "Insert a graphical line below cursor"
  (interactive)
  (goto-char (line-end-position)) (insert "\n---\n")
  )
