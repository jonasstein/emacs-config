(require 'ess-site) ;(ess-mode t)
(load "~/.emacs.d/elpa/ess-20120906.1549/lisp/ess-site")

;; following 2 line from http://www.emacswiki.org/emacs/?action=browse;oldid=CategoryESS;id=EmacsSpeaksStatistics
(setq ess-eval-visibly-p nil) ;otherwise C-c C-r (eval region) takes forever
(setq ess-ask-for-ess-directory nil) ;otherwise you are prompted each time you start an interactive R session

