;; AUCTeX 
;(load "auctex.el" nil t t) ;; DO NOT USE THIS LINE

;(setq LaTeX-command "pdflatex")

;; (setq TeX-auto-save t)

;; (add-hook 'LaTeX-mode-hook 'visual-line-mode)
;; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'TeX-mode-hook 'auto-complete-mode)
;; ;(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; ;(setq reftex-plug-into-AUCTeX t)



;; ;(setq reftex-plug-into-AUCTeX t) ; FIXME are these 2 lines redundant?
;; ;(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode

;; (setq TeX-auto-untabify t) ; Automatically remove all tabs from a file before saving it.

;;  (add-hook 'LaTeX-mode-hook
;;            (function
;;             (lambda ()
;;              (define-key LaTeX-mode-map "\C-c\C-a"
;;               'align-current))))


;; (setq-default TeX-master "master") ; All master files called "master".
;; (setq TeX-parse-self t) ; Enable parse on load.
;; (setq TeX-auto-save t) ; Enable parse on save.


;; ;(setq LaTeX-fill-break-at-separators (quote ({ } \[ \\\( \\\) \\\[ \\\])))
;; (setq buffers-menu-show-status t)

;; ;;
;; ;; PREVIEW
;;  (load "preview-latex.el" nil t t) ; The usual activation (if it is not done automatically)
;; (setq preview-image-type (quote dvipng))
;; ;(setq preview-auto-cache-preamble nil)


;; ;(setq truncate-lines t)  ;   Do not make virtual linebreaks. This is useful for long tables in LaTeX. Found in http://www.siart.de/typografie/siart_emacs.pdf


;; ;; Auto-insert $
;(setq TeX-math-close-double-dollar t)

;; (setq TeX-PDF-mode t)

(setq preview-auto-cache-preamble nil)
(setq preview-image-type (quote dvipng)) ; URGEND LINE BECAUSE OF GS 8.71 BUG
