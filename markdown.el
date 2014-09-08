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
    (goto-char end) (insert "```")
    (goto-char start) (insert "```")
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

(defun H1 ()
  "Insert Largest Header at start of line"
  (interactive)
  (save-excursion
    (goto-char (line-beginning-position)) (insert "#")
    ))
(defun H2 ()
  "Insert an H2 Header at start of line"
  (interactive)
  (save-excursion
    (goto-char (line-beginning-position)) (insert "##")
    ))
(defun H3 (start end)
  "Insert an H3 Header at start of line"
  (interactive "r")
  (save-excursion
    (goto-char start) (insert "###")
    ))
(defun H4 (start end)
  "Insert an H4 Header"
  (interactive "r")
  (save-excursion
    (goto-char start) (insert "####")
    ))
(defun H5 (start end)
  "Insert an H5 Header"
  (interactive "r")
  (save-excursion
    (goto-char start) (insert "#####")
    ))
(defun H6 (start end)
  "Insert an H6 Header"
  (interactive "r")
  (save-excursion
    (goto-char start) (insert "######")
    ))
