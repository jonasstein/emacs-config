;; Define the look and feel settings of emacs here

;; Face-style
(setq inhibit-splash-screen 1) 

;; found this font with M-x set-default-font RET then TAB
(set-face-font 'default "-misc-fixed-medium-r-normal--15-*-75-75-c-90-iso8859-15")

;; http://www.emacswiki.org/cgi-bin/wiki/FrameTitle 
(setq frame-title-format "%b in Emacs mode: %m")

;; decorations // display modes
;(display-time 1)
(setq display-time-24hr-format 1)
(setq display-time-day-and-date 1)
(setq display-time-mode 1)

; short answer for yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

; linenumbers on the left

(setq global-linum-mode t)
(line-number-mode t)


; commented out on 2012-01-11 as it did not work in my office
; have to fix it later: FIXME
;(require 'color-theme)
;(color-theme-initialize)
;(ergoday)


;; paren ()
; http://nschum.de/src/emacs/highlight-parentheses/
; (require 'highlight-parentheses)
(show-paren-mode 1)
(setq show-paren-delay 0)

(setq use-dialog-box nil)
(setq use-file-dialog nil)
