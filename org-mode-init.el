(require 'org-install)
;; init the org-mode

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)



;; Set to the location of your Org files on your local system
(setq org-directory "~/org")
;(setq org-agenda-files "~/org")


(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))


(require 'org-habit)

(setq org-log-done 'time ;log when a todo was closed
      org-log-done-with-time t ;with time
      org-extend-today-until 5 ;extend 'today' to 5AM
      org-log-into-drawer t ;log into 'LOGBOOK'
      )


(setq org-todo-keywords '((sequence "TODO(t)" "|" "DONE(d)")
                          (sequence "|" "CANCELED(c)")))

;;; org-clock configuration
(setq org-clock-out-remove-zero-time-clocks t
      org-clock-out-when-done t
      org-clock-modeline-total 'today
      org-clock-persist t
      org-clock-persistence-insinuate)
