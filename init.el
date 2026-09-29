;; Loading Evil Mode  -*- lexical-binding: t; -*-
(add-to-list 'load-path "~/emacs-packages/evil")
;; Load Custom theme
(add-to-list 'custom-theme-load-path "~/emacs-packages/Hopscotch/Emacs")

(load-theme 'hopscotch t)

;; Set Linenumbers
(global-display-line-numbers-mode 1)

;; Load Lexical binding as safe varaible
(put 'lexical-binding 'safe-local-variable  'booleanp)

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Enable Synatax Highlighting (Max Decoration)
(setq font-lock-maximum-decoration t)
