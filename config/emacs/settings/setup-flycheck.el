(use-package flycheck
  :config

  ;; Enable globally
  (global-flycheck-mode t)

  ;; Use C++11 rules
  (add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11"
                                            flycheck-clang-language-standard "c++11")))

  ;; Fix Rust warning
  (add-hook 'rust-mode-hook 'flycheck-rust-setup)

  ;; Show errors in tooltip
  (with-eval-after-load 'flycheck
    (flycheck-pos-tip-mode)))

(provide 'setup-flycheck)
;;; setup-flycheck.el ends here
