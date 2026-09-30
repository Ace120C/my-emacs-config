;; Loading Evil Mode  -*- lexical-binding: t; -*-
(add-to-list 'load-path "~/emacs-packages/evil")
;; Load Custom theme
(add-to-list 'custom-theme-load-path "~/emacs-packages/Hopscotch/Emacs")

(load-theme 'hopscotch t)

;; Set Linenumbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;; Load Lexical binding as safe varaible
(put 'lexical-binding 'safe-local-variable  'booleanp)

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Enable Synatax Highlighting (Max Decoration)
(setq font-lock-maximum-decoration t)

;; Enable Auto-Balance
(electric-pair-mode 1)

;; MELPA
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Go LSP
(setenv "PATH"
	(concat "/home/ace/go/bin/:" (getenv "PATH")))

(add-to-list 'exec-path "/home/ace/go/bin/")

(require 'lsp-mode)
;; autostart Go LSP
(add-hook 'go-mode-hook #'lsp-deferred)
;; Autocomplete
(require 'company)
(add-hook 'after-init-hook #'global-company-mode)

;; Go-mode
(require 'go-mode)

(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
(add-hook 'go-mode-hook #'lsp-deferred)

;; Show completions Really Fast
(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(company go-mode lsp-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
