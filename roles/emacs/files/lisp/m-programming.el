;;; -*- coding: utf-8; lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; YASnippet
(use-package yasnippet
  :config
  (yas-global-mode 1))

;; Smartparens
(use-package smartparens)

;; Completion
;; Company
(require 'p-company)

;; Error Checking
;; Flycheck
(use-package flycheck
  :init
  (global-flycheck-mode))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook (go-mode . lsp-deferred))

(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

(use-package lsp-ui
  :commands lsp-ui-mode)

(provide 'm-programming)
