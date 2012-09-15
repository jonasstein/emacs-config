;; AUCTeX 
;(load "auctex.el" nil t t)

(setq TeX-auto-save t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(add-hook 'TeX-mode-hook 'auto-complete-mode)

(setq reftex-plug-into-AUCTeX t)

(setq TeX-auto-untabify t) ; Automatically remove all tabs from a file before saving it.

(add-hook 'LaTeX-mode-hook
          (function
           (lambda ()
            (define-key LaTeX-mode-map "\C-c\C-a"
             'align-current))))


(setq-default TeX-master "master") ; All master files called "master".
(setq-default TeX-master nil)
(setq TeX-parse-self t) ; Enable parse on load.
(setq TeX-auto-save t) ; Enable parse on save.

(setq LaTeX-command "pdflatex")
(setq LaTeX-fill-break-at-separators (quote ({ } \[ \\\( \\\) \\\[ \\\])))
(setq buffers-menu-show-status 1)

;;
;; PREVIEW
;(load "preview-latex.el" nil t t)
(setq preview-image-type (quote dvipng))
(setq preview-auto-cache-preamble nil)


(setq truncate-lines t)  ;   Do not make virtual linebreaks. This is useful for long tables in LaTeX. Found in http://www.siart.de/typografie/siart_emacs.pdf
