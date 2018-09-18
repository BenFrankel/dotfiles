(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-clang-arguments (quote ("-std=c++11")))
 '(company-frontends
   (quote
    (company-pseudo-tooltip-frontend company-echo-metadata-frontend)))
 '(company-global-modes (quote (prog-mode)))
 '(company-idle-delay 0.3)
 '(company-minimum-prefix-length 1)
 '(company-require-match nil)
 '(company-selection-wrap-around t)
 '(company-show-numbers t)
 '(company-tooltip-margin 1)
 '(company-tooltip-minimum 3)
 '(package-selected-packages
   (quote
    (company-web gitattributes-mode gitconfig-mode gitignore-mode avy discover-my-major helm-gtags ggtags web-mode flycheck-irony company-irony company-irony-c-headers company-math company-shell irony auctex zenburn-theme yasnippet xkcd volatile-highlights use-package undo-tree toml-mode speed-type solarized-theme solaire-mode rich-minority recentf-ext rainbow-mode racer powerline paradox ox-twbs ox-rst ox-gfm org-bullets nlinum neotree multiple-cursors monokai-theme markdown-preview-eww markdown-mode magit know-your-http-well jedi info+ indent-tools hl-todo highlight-symbol highlight-parentheses highlight-numbers highlight-indentation highlight-indent-guides highlight-current-line helm-projectile helm-ag haskell-mode goto-chg go-mode flycheck-rust flycheck-pos-tip fill-column-indicator expand-region duplicate-thing doom-themes dired+ darkokai-theme company-racer cargo anaphora 2048-game)))
 '(paradox-automatically-star nil)
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:background "nil" :foreground "#fb2874" :weight bold :height 1.2))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "#fd971f"))))
 '(org-quote ((t (:inherit italic :background "nil" :foreground "#cfc0c5")))))
