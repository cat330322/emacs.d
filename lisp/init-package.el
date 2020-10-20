;;;init-package --- settings fot packages

(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

(use-package crux
      :bind ("C-c k" . crux-smart-kill-line))

(use-package hungry-delete
  :bind ("C-c DEL" . hungry-delete-backward)
  :bind ("C-c d" . hungry-delete-forward))


(use-package drag-stuff
  :bind ("<M-up>". drag-stuff-up)
  :bind ("<M-down>" . drag-stuff-down))


(use-package company
  :config
  (setq company-dabbrev-code-everywhere t
	company-dabbrev-code-modes t
	company-dabbrev-code-other-buffers 'all
	company-dabbrev-downcase nil
	company-dabbrev-ignore-case t
	company-dabbrev-other-buffers 'all
	company-require-match nil
	company-minimum-prefix-length 2
	company-show-numbers t
	company-tooltip-limit 20
	company-idle-delay 0
	company-echo-delay 0
	company-tooltip-offset-display 'scrollbar
	company-begin-commands '(self-insert-command))
  (push '(company-semantic :with company-yasnippet) company-backends)
    :hook ((after-init . global-company-mode)))

(use-package flycheck
    :hook (after-init . global-flycheck-mode))

(use-package which-key
  :defer nil
    :config (which-key-mode))


(use-package restart-emacs)


(provide 'init-package)
