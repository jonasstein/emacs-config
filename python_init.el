;; -----------------------------------------------------------------------------
;; Auto-Insert Stuff
;; -----------------------------------------------------------------------------


(auto-insert-mode)
(setq auto-insert-query nil)            ;do not ask before insertion
(setq auto-insert-alist
       '(
          ((python-mode . "Python Program")
          nil
"#!/usr/bin/env python
#  -*- coding: utf-8 -*- 

__version__ = 0.01 
__author__ = \"" (user-full-name) "\"
\"\"\"Description:
\"\"\" 



if __name__ == \"__main__\":
    main()"
          )))


;; mark lines with width > 80 in python-mode
(add-hook 'python-mode-hook
  (lambda ()
    (font-lock-add-keywords nil
      '(("^[^\n]\\{80\\}\\(.*\\)$" 1 font-lock-warning-face t)))))


;; on word-delete don't delete ' -- not only in Python
(modify-syntax-entry ?\' "$")

;; Highlight "FIXME" and "TODO" comments  --  not only in Python
(defun add-fixme-highlighting ()
    "Turn on extra highlighting for 'FIXME' and the like."
    (font-lock-add-keywords nil
     '(("\\<\\(FIXME\\|TODO\\)" 1 font-lock-warning-face t))))
(add-hook 'find-file-hooks 'add-fixme-highlighting t)


;; pymacs
;; ropemacs
;; flymake mit pylint
