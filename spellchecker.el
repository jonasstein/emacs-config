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
