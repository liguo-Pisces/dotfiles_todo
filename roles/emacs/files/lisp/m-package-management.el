;; -*- coding: utf-8; lexical-binding: t; -*-

;; Package manager
;; (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
;; 			 ("melpa" . "https://melpa.org/packages/")
;; 			 ("melpa-stable" . "https://stable.melpa.org/packages/")))

(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                        ("elpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                        ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")))

;; (setq package-archives '(("gnu" . "https://mirrors.163.com/elpa/gnu/")
;; 			 ("melpa" . "https://mirrors.163.com/elpa/melpa/")
;; 		 ("melpa-stable" . "https://mirrors.163.com/elpa/melpa-stable/")))

(package-initialize)

;; Package configuration
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-expand-minimally t)
  (setq use-package-enable-imenu-support t))

(eval-when-compile
  (require 'use-package))

(provide 'm-package-management)
