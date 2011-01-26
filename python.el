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





