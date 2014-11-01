 (defun window_swap ()
   "Rotate your windows" 
   (interactive) 
   (cond 
    ((not (> (count-windows) 1))
     (message "You can't rotate a single window!"))
    (t
     (setq iterate 1)
     (setq numWindows (count-windows))
     (while  (< iterate numWindows)
       (let* (
              (w1 (elt (window-list) iterate))
              (w2 (elt (window-list) (+ (% iterate numWindows) 1)))
              (b1 (window-buffer w1))
              (b2 (window-buffer w2))
              (s1 (window-start w1))
              (s2 (window-start w2)))
         (set-window-buffer w1  b2)
         (set-window-buffer w2 b1)
         (set-window-start w1 s2)
         (set-window-start w2 s1)
         (setq iterate (1+ iterate)))))))

(global-set-key (kbd "C-c s") 'window_swap)
