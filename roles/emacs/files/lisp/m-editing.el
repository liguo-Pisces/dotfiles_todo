;; -*- coding: utf-8; lexical-binding: t; -*-

(electric-pair-mode 1)

(global-hl-line-mode 1)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; auto save
(use-package super-save
  :init
  (setq super-save-auto-save-when-idle t)
  (setq auto-save-default nil)
  :config
  (super-save-mode +1))

(provide 'm-editing)
