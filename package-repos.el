;; http://emacswiki.org/wiki/ELPA
;; list of repositories for emacs >= 24.x
;; http://marmalade-repo.org/

(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)
