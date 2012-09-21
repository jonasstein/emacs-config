;(add-to-list 'load-path
;             "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(yas/load-directory "~/.emacs.d/snippets")
