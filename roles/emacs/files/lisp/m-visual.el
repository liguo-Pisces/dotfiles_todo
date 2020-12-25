

(defvar linum-inhibit-modes
  '(eshell-mode
    help-mode
    treemacs-mode
    ))

(defun display-line-numbers-mode-hook-setup ()
  (setq display-line-numbers (not (memq major-mode linum-inhibit-modes))))
(add-hook 'display-line-numbers-mode-hook 'display-line-numbers-mode-hook-setup)
(run-with-idle-timer 2 nil #'global-display-line-numbers-mode)


(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(provide 'm-visual)
