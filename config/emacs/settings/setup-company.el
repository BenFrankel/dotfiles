(require 'rust-mode)
(require 'company-c-headers)
(require 'company-web-html)

(use-package company
  :bind (:map rust-mode-map
        ("TAB" . company-indent-or-complete-common))
  
  :config
  
  (add-hook 'prog-mode-hook 'company-mode)
  (add-to-list 'company-backends
               'company-c-headers
               'company-irony)

  ;; TODO: What about when version changes?
  (add-to-list 'company-c-headers-path-system "/usr/include/c++/8.1.1"))

(provide 'setup-company)
;;; setup-company.el ends here
