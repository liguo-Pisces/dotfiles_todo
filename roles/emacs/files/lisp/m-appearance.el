;; -*- coding: utf-8; lexical-binding: t; -*-

;; 
;(set-frame-font "JetBrainsMono 12")
(set-frame-font "Monaco 12")

;; 显示时间
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;; 工具栏、菜单栏、滑动条模式关闭
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; 关闭启动消息
(setq inhibit-startup-message t)

;; 高亮缩进
(use-package highlight-indent-guides
  :init
  (add-hook 'prog-mode-hook #'highlight-indent-guides-mode)
  (setq highlight-indent-guides-method 'bitmap))

(use-package all-the-icons)

(use-package powerline
  :config
  (powerline-default-theme))

(use-package diminish)

(provide 'm-appearance)
