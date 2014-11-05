(defun eshell/clear ()
  "clears the eshell buffer"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
