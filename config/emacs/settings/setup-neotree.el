(use-package neotree
  :bind ("C-c d" . (lambda ()
		     (interactive)
		     (setq neotree-toggling-p t)
		     (neotree-toggle)
		     (setq neotree-toggling-p nil)))

  :init

  (defvar neotree-toggling-p nil)
  (defvar neotree-safe-refresh-ready-p t)

  (defun neotree-safe-refresh ()
    "Refresh neotree and set a cooldown.  Safe for use in 'buffer-list-update-hook'."
    (if (and neotree-safe-refresh-ready-p
             (not neotree-toggling-p)
             (neo-global--window-exists-p))
	(progn
	  (setq neotree-safe-refresh-ready-p nil)
          (run-at-time "0.02 sec" nil
                       (lambda ()
			 (neotree-refresh t)
			 (run-at-time "0.2 sec" nil
			              (lambda ()
					(setq neotree-safe-refresh-ready-p t))))))))
  
  :config
  
  (setq neo-buffer-name "*NeoTree*")
  (setq neo-confirm-delete-file nil)
  (setq neo-show-hidden-files t)
  (setq neo-toggle-window-keep-p t)
  (setq neo-window-fixed-size nil)
  (setq neo-force-change-root t)

  (add-hook 'window-configuration-change-hook 'neotree-safe-refresh)
  (add-hook 'buffer-list-update-hook 'neotree-safe-refresh)

  (doom-themes-neotree-config))

(provide 'setup-neotree)
;;; setup-neotree.el ends here
