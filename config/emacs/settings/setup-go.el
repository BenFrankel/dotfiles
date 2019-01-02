(use-package go-mode
  :mode "\\.go\\(\\'\\|\\.\\)"

  :config
  
  (add-hook 'before-save-hook #'gofmt-before-save))

(provide 'setup-go)
;;; setup-go.el ends here
