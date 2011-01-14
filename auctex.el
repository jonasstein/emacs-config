;; AUCTeX 






(setq TeX-auto-untabify t) ; Automatically remove all tabs from a file before saving it.

(add-hook 'LaTeX-mode-hook
          (function
           (lambda ()
            (define-key LaTeX-mode-map "\C-c\C-a"
             'align-current))))

(setq-default ispell-program-name "aspell")

(setq-default TeX-master "master") ; All master files called "master".
(setq-default TeX-master nil)
(setq TeX-parse-self t) ; Enable parse on load.
(setq TeX-auto-save t) ; Enable parse on save.

