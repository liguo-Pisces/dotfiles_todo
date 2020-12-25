;;; -*- coding: utf-8; lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; 设置垃圾回收
(setq gc-cons-threshold 100000000
      gc-cons-percentage 0.5)

(push (expand-file-name "lisp" user-emacs-directory) load-path)

;; 包配置
(require 'm-package-management)
;; 外观配置
(require 'm-appearance)
;; 主题配置
(require 'm-theme)
;; 接口增强配置
(require 'm-interface-enhancement)
;; 文件管理配置
(require 'm-file-manager)
;; 导航配置
(require 'm-navigation)
;; 可视区域配置
(require 'm-visual)
;; 编辑功能配置
(require 'm-editing)
;; 项目管理配置
(require 'm-project-management)
;; 程序功能配置
(require 'm-programming)
;; 编程语言配置
(require 'm-programming-language)

(require 'm-keys-cheat-sheet)
;; 笔记配置
(require 'm-note)
;; 版本控制配置
(require 'm-version-control)
;; 一体化配置
(require 'm-integration)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ivy-xref ivy-yasnippet counsel-projectile ivy-hydra ivy-prescient amx company-prescient doom-modeline pinyinlib counsel-tramp counsel-world-clock gnu-elpa-keyring-update diminish use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ivy-minibuffer-match-face-1 ((t (:inherit font-lock-doc-face :foreground nil)))))
