;; Allow clear in eshell ;;
(defun eshell/clear ()
  "clears the eshell buffer"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

;; This will transform ansi color to faces in Emacs shell! ;;
(ansi-color-for-comint-mode-on)
(defun eshell-handle-ansi-color ()
  (ansi-color-apply-on-region eshell-last-output-start
			      eshell-last-output-end))
(add-hook 'eshell-mode-hook
	  '(lambda ()
	     (add-to-list
	      'eshell-output-filter-functions
	      'eshell-handle-ansi-color)))

;; Alias emacs to use find-file ;;
(defun eshell/emacs (file)
  "find-file alias"
  (find-file file))
