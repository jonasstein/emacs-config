(load-file "~/.emacs.d/auctex.el") 
(load-file "~/.emacs.d/autocomplete.el")
(load-file "~/.emacs.d/gnuplot.el") 
(load-file "~/.emacs.d/linum.el") 

;; (load-file "~/.emacs.d/graphviz.el") FIXME

(load-file "~/.emacs.d/python_init.el")


(load-file "~/.emacs.d/ergoday-theme.el")
(require 'color-theme)
(color-theme-initialize)
(ergoday)

;; Face-style

(setq inhibit-splash-screen t) 

;; found this font with M-x set-default-font RET then TAB
(set-face-font 'default "-misc-fixed-medium-r-normal--15-*-75-75-c-90-iso8859-15")

;; http://www.emacswiki.org/cgi-bin/wiki/FrameTitle 
(setq frame-title-format "%b in Emacs mode: %m")

;; decorations // display modes
;(display-time t)
(display-time-24hr-format t)
(display-time-day-and-date t)
(display-time-mode t)

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
;;   emacs-goodies-el

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(LaTeX-command "pdflatex")
 '(LaTeX-fill-break-at-separators (quote ({ } \[ \\\( \\\) \\\[ \\\])))
 '(buffers-menu-show-status t)
 '(preview-auto-cache-preamble nil)
 '(python-use-skeletons t)
 '(reftex-plug-into-AUCTeX t)
 '(safe-local-variable-values (quote ((speck-hunspell-default-dictionary-name . "de-neu") (ispell-dictionary . de-neu) (ispell-local-dictionary . De))))
 '(use-dialog-box nil)
 '(use-file-dialog nil))


; short answer for yes/no
(defalias 'yes-or-no-p 'y-or-n-p)