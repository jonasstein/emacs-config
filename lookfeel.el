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
