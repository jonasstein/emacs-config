;; this configuration file was created with these sources: 
;; http://xahlee.org/
;; 

(load-file "~/.emacs.d/auctex.el")
(load-file "~/.emacs.d/autocomplete.el")


;; Face-style

(setq inhibit-splash-screen t) 
(set-face-font 'default "-Misc-Fixed-Medium-R-Normal--16-120-75-75-C-80-ISO8859-1")


;; http://www.emacswiki.org/cgi-bin/wiki/FrameTitle 
(setq frame-title-format "%b in Emacs mode: %m")

;; decorations // display modes
(setq display-time t)


; display line numbers in margin (fringe). Emacs 23 only.
(global-linum-mode 1) ; always show line numbers
(setq line-number-mode t)
(setq column-number-mode t)



;; paren ()
; http://nschum.de/src/emacs/highlight-parentheses/
; (require 'highlight-parentheses)
(show-paren-mode 1)
(setq show-paren-delay 0)

;; backup
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #auto save# files




;; Hot keys
(global-set-key [(M-right)] 'forward-buffer)
(global-set-key [(M-left)] 'backward-buffer)

;==============================================================================
; buffer cycling
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




;; localisation
(set-language-environment "utf-8")


;; spellchecker
(setq speck-engine (quote Hunspell))
(setq speck-hunspell-language-options
      (quote (("de" utf-8 nil t nil)
              ("en" utf-8 nil nil nil)
              ("ru" koi8-r nil nil nil))))
(setq speck-hunspell-program "hunspell")
(setq speck-hunspell-default-dictionary-name "de_DE")
;; en_US




(defun turn-spell-checking-on ()
  (flyspell-mode 0)
  )


(add-hook 'text-mode-hook 'turn-spell-checking-on)



;; FIXME
;;   dotmode
;;   emacs-goodies-el

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(graphviz-dot-indent-width 4)
 '(graphviz-dot-view-command "geeqie %s")
 '(safe-local-variable-values (quote ((speck-hunspell-default-dictionary-name . "de-neu") (ispell-dictionary . de-neu) (ispell-local-dictionary . De)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


