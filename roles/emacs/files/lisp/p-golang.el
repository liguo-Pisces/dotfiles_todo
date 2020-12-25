
(use-package go-mode
  :init
  (autoload 'go-mode "go-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode)))

(provide 'p-golang)
