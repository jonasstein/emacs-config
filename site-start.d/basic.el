;;; Personal Stuff
(setq user-full-name "Jonas Stein")
(setq user-mail-address "news@jonasstein.de")

;;; English!
(set-language-environment "English")

;; UTF8!
(prefer-coding-system 'utf-8)
(set-language-environment "utf-8") ; this was in my old config... dont remember why...

;;; y/n instead of annoying yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;; Don't create backup-files
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #auto save# files

;;; Disable annoying startup-stuff
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;;; Show messages for one second
(setq minibuffer-message-timeout 3)

;;; Disable recursive minibuffer commands
(setq enable-recursive-minibuffers nil)
