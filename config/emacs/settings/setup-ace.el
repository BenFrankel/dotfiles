(use-package avy
  :bind (("C-c C-SPC" . avy-goto-line)
	 ("C-c SPC" . avy-goto-char))
  
  :config

  ;; Use a-z then A-Z then 0-9
  (setq avy-keys
	(nconc (loop for i from ?a to ?z collect i)
               (loop for i from ?A to ?Z collect i)
               (loop for i from ?0 to ?9 collect i))))

(provide 'setup-ace)
;;; setup-ace.el ends here
