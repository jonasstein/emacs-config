
(setq '(graphviz-dot-indent-width 4))
(setq '(graphviz-dot-view-command "geeqie %s"))

(eval-after-load 'graphviz-dot-color-keywords (setq graphviz-dot-color-keywords (mapcar (lambda (color) (concat (rx bow) (symbol-name color) (rx eow)))   graphviz-dot-colors-(list ))) )
 
