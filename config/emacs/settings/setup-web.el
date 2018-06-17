(use-package web-mode
  :mode (("\\.html?\\'")
	 ("\\.phtml\\'")
	 ("\\.tpl\\.php\\'")
	 ("\\.[agj]sp\\'")
	 ("\\.as[cp]x\\'")
	 ("\\.erb\\'")
	 ("\\.mustache\\'")
	 ("\\.djhtml\\'"))
  
  :config

  ;; Indentation
  (defun my-web-mode-hook ()
    "Custom hook for `web-mode` configuration."
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 4)
    (setq web-mode-code-indent-offset 4)
    (setq web-mode-style-padding 2)
    (setq web-mode-script-padding 2)
    (setq web-mode-enable-current-element-highlight t)
    (setq web-mode-enable-current-column-highlight t)
    (setq web-mode-enable-css-colorization t))
  
  (add-hook 'web-mode-hook 'my-web-mode-hook))

(provide 'setup-web)
;;; setup-web.el ends here
