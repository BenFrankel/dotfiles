;;; package --- Summary
;;;    Install packages if necessary for emacs
;;;
;;; Commentary:
;;;    No commentary
;;;
;;; Code:


(require 'package)
(setq use-package-always-ensure t)

;; Packages from EmacsWiki are omitted:
;; - dired+
;; - font-lock+
;; - highlight-current-line
;; - info+

(setq package-list '(ace-jump-mode all-the-icons anaphora async auto-complete avy bind-key cargo company company-c-headers company-irony company-irony-c-headers company-math company-racer company-shell company-web concurrent ctable darkokai-theme dash deferred diminish discover-my-major doom-themes duplicate-thing epc epl expand-region f fill-column-indicator flycheck flycheck-irony flycheck-pos-tip flycheck-rust ggtags ghub graphql treepy git-commit gitattributes-mode gitconfig-mode gitignore-mode go-mode goto-chg haskell-mode helm helm-ag helm-core helm-gtags helm-projectile highlight-indent-guides highlight-indentation highlight-numbers highlight-parentheses highlight-symbol hl-todo hydra indent-tools irony jedi jedi-core know-your-http-well magit magit-popup makey markdown-mode markdown-preview-eww math-symbol-lists memoize monokai-theme multiple-cursors neotree org-bullets ox-gfm ox-rst ox-twbs paradox parent-mode pkg-info popup pos-tip powerline projectile python-environment racer recentf-ext rich-minority rust-mode s solaire-mode solarized-theme speed-type toml-mode use-package volatile-highlights web-completion-data web-mode with-editor xkcd yafolding yasnippet zenburn-theme ace-jump-mode anaphora auctex avy cargo company-c-headers company-irony company-irony-c-headers company-math company-racer company-shell company-web company darkokai-theme diminish discover-my-major doom-themes all-the-icons duplicate-thing expand-region fill-column-indicator flycheck-irony flycheck-pos-tip flycheck-rust flycheck ggtags gitattributes-mode gitconfig-mode gitignore-mode go-mode goto-chg haskell-mode helm-ag helm-gtags helm-projectile helm helm-core highlight-indent-guides highlight-indentation highlight-numbers highlight-parentheses highlight-symbol hl-todo indent-tools irony jedi auto-complete jedi-core epc ctable concurrent know-your-http-well magit git-commit ghub magit-popup makey markdown-mode markdown-preview-eww math-symbol-lists memoize monokai-theme multiple-cursors neotree nlinum org-bullets ox-gfm ox-rst org ox-twbs paradox hydra parent-mode popup powerline projectile pkg-info epl python-environment deferred racer pos-tip f rainbow-mode recentf-ext rich-minority rust-mode s solaire-mode solarized-theme dash speed-type spinner toml-mode undo-tree use-package bind-key volatile-highlights web-completion-data web-mode with-editor async xkcd yafolding yasnippet zenburn-theme))

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


;;;;;;;;;
;; FIN ;;
;;;;;;;;;
(provide 'init-packages)
;;; init-packages.el ends here
