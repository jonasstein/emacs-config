;; -----------------------------------------------------------------------------
;; Auto-Insert Stuff
;; -----------------------------------------------------------------------------


(auto-insert-mode)
(setq auto-insert-query nil)            ;do not ask before insertion
(setq auto-insert-alist
       '(
          ((python-mode . "Python Program")
          nil
          "#!/usr/bin/env python\n"
	  "#  -*- coding: utf-8 -*- \n"
          "# \n"
          "# __version__ = 0.01 \n"
          "# __author__ = \"" (user-full-name) "\"\n#\n"
          "\"\"\"Description:\"\"\" \n"
          )))





