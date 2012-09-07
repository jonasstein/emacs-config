
(load-file "~/.emacs.d/auctex.el") 
;(load-file "~/.emacs.d/autocomplete.el")
(load-file "~/.emacs.d/gnuplot.el") 
(load-file "~/.emacs.d/ess-mode-init.el") 
(load-file "~/.emacs.d/ido-mode.el") 
(load-file "~/.emacs.d/package-repos.el") 

;; (load-file "~/.emacs.d/graphviz.el") FIXME

(load-file "~/.emacs.d/python_init.el")
(load-file "~/.emacs.d/magit_init.el")
(load-file "~/.emacs.d/org-mode-init.el")
(load-file "~/.emacs.d/pov-mode_init.el")
(load-file "~/.emacs.d/spellchecker.el")

(load-file "~/.emacs.d/ergoday-theme.el")
(package-initialize)

(line-number-mode t)

; commented out on 2012-01-11 as it did not work in my office
; have to fix it later: FIXME
;(require 'color-theme)
;(color-theme-initialize)
;(ergoday)

(load-file "~/.emacs.d/lookfeel.el")

;; paren ()
; http://nschum.de/src/emacs/highlight-parentheses/
; (require 'highlight-parentheses)
(show-paren-mode 1)
(setq show-paren-delay 0)

;; backup
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #auto save# files


;; Hot keys

; begin buffer cycling
;=======================================================
(global-set-key [(M-right)] 'forward-buffer)
(global-set-key [(M-left)] 'backward-buffer)

(defun backward-buffer () (interactive)
  "Switch to previously selected buffer."
  (let* ((list (cdr (buffer-list)))
         (buffer (car list)))
    (while (and (cdr list) (string-match "\\*" (buffer-name buffer)))
      (progn
        (setq list (cdr list))
        (setq buffer (car list))))
    (bury-buffer)
    (switch-to-buffer buffer)))

(defun forward-buffer () (interactive)
  "Opposite of backward-buffer."
  (let* ((list (reverse (buffer-list)))
         (buffer (car list)))
    (while (and (cdr list) (string-match "\\*" (buffer-name buffer)))
      (progn
        (setq list (cdr list))
        (setq buffer (car list))))
    (switch-to-buffer buffer)))
;=======================================================
; end buffer cycling

;; localisation
(set-language-environment "utf-8")




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(python-use-skeletons 1)
 '(reftex-plug-into-AUCTeX 1 t)
 '(safe-local-variable-values (quote ((speck-hunspell-default-dictionary-name . "de-neu") (ispell-dictionary . de-neu) (ispell-local-dictionary . De))))
 '(use-dialog-box nil)
 '(use-file-dialog nil))




