;(deftheme ergoday
;  "Created 2011-01-23. ")
;
;(provide-theme 'ergoday)


(defun ergoday ()
  (interactive)
  (color-theme-install
   '(ergoday
      ((background-color . "#f2f2f2")
      (background-mode . light)
      (border-color . "#d4d4d4")
      (cursor-color . "#bababa")
      (foreground-color . "#000000")
      (mouse-color . "black"))
     (fringe ((t (:background "#d4d4d4"))))
     (mode-line ((t (:foreground "#000000" :background "#d1d1d1"))))
     (region ((t (:background "#aeb5db"))))
     (font-lock-builtin-face ((t (:foreground "#2810fe"))))
     (font-lock-comment-face ((t (:foreground "#24942c"))))
     (font-lock-function-name-face ((t (:foreground "#8f0000"))))
     (font-lock-keyword-face ((t (:foreground "#0030f5"))))
     (font-lock-string-face ((t (:foreground "#ac5a1b"))))
     (font-lock-type-face ((t (:foreground"#934dff"))))
     (font-lock-variable-name-face ((t (:foreground "#858585"))))
     (minibuffer-prompt ((t (:foreground "#000000" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     )))
(provide 'ergoday)