;; AUCTeX 
;(load "auctex.el" nil t t) ;; DO NOT USE THIS LINE

; Turn on RefTeX for AUCTeX, http://www.gnu.org/s/auctex/manual/reftex/reftex_5.html
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
; Make RefTeX interact with AUCTeX,    http://www.gnu.org/s/auctex/manual/reftex/AUCTeX_002dRefTeX-Interface.html
(setq reftex-plug-into-AUCTeX t)  

(add-hook 'LaTeX-mode-hook
          (lambda ()
            (require 'reftex)
))

;; http://www.gnu.org/software/auctex/manual/auctex/Parsing-Files.html#Parsing-Files
(setq TeX-parse-self t) ; Enable parse on load.
(setq TeX-auto-save t) ; Enable parse on save.

(setq TeX-auto-save t) ; http://www.gnu.org/software/auctex/manual/auctex/Multifile.html#Multifile

;; (add-hook 'LaTeX-mode-hook 'visual-line-mode)
;; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)


(setq TeX-auto-untabify t) ; Automatically remove all tabs from a file before saving it.

;;  (add-hook 'LaTeX-mode-hook
;;            (function
;;             (lambda ()
;;              (define-key LaTeX-mode-map "\C-c\C-a"
;;               'align-current))))


;; (setq-default TeX-master "master") ; All master files called "master".


; (setq LaTeX-fill-break-at-separators (quote ({ } \[ \\\( \\\) \\\[ \\\])))
; (setq buffers-menu-show-status t)

;; ;;
;; ;; PREVIEW
;;  (load "preview-latex.el" nil t t) ; The usual activation (if it is not done automatically)
;; (setq preview-image-type (quote dvipng))
;; ;(setq preview-auto-cache-preamble nil)


;; ;(setq truncate-lines t)  ;   Do not make virtual linebreaks. This is useful for long tables in LaTeX. Found in http://www.siart.de/typografie/siart_emacs.pdf


;; ;; Auto-insert $
(setq TeX-math-close-double-dollar t)

(setq TeX-PDF-mode t) ; PDF button per default instead of DVI

(setq preview-auto-cache-preamble nil)
(setq preview-image-type (quote dvipng)) ; URGEND LINE BECAUSE OF GS 8.71 BUG


;; http://stackoverflow.com/questions/2199678/how-to-call-latexmk-in-emacs-and-jump-to-next-error
;; (add-hook 'LaTeX-mode-hook (lambda ()
;;   (push 
;;     '("Latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
;;       :help "Run Latexmk on file")
;;     TeX-command-list)))


(add-hook 'LaTeX-mode-hook (lambda ()
  (push 
    '("Latexmk" "latexmk -pdf %(mode) %s" TeX-run-TeX nil t
      :help "Run Latexmk on file")
    TeX-command-list)))


'("%(-PDF)"
  (lambda ()
    (if (and (not TeX-Omega-mode)
             (or TeX-PDF-mode TeX-DVI-via-PDFTeX))
        "-pdf" "")))




(add-hook 'LaTeX-mode-hook (function turn-on-reftex))
(setq reftex-plug-into-AUCTeX t)
