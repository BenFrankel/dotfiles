(require 'rust-mode)
(require 'company-c-headers)
(require 'company-web-html)
(require 'company-go)

(use-package company
  :bind (:map rust-mode-map
        ("TAB" . company-indent-or-complete-common))
  
  :config
  
  (add-hook 'prog-mode-hook 'company-mode)
  (add-to-list 'company-backends
               'company-c-headers
               'company-irony
               'company-go)
  
  (add-hook 'go-mode-hook
      (lambda ()
        (set (make-local-variable 'company-backends) '(company-go))
        (company-mode)))

  ;; TODO: What about when version changes?
  (add-to-list 'company-c-headers-path-system "/usr/include/c++/8.2.1"))

(provide 'setup-company)
;;; setup-company.el ends here
