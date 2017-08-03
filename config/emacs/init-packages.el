;;; package --- Summary
;;;    Install packages if necessary for emacs
;;;
;;; Commentary:
;;;    No commentary
;;;
;;; Code:


(require 'package)

(setq package-list '(2048-game ace-jump-mode anaphora cargo company-c-headers company-racer company darkokai-theme dired+ doom-themes all-the-icons duplicate-thing expand-region fill-column-indicator flycheck-pos-tip flycheck-rust flycheck font-lock+ go-mode goto-chg haskell-mode helm-ag helm-projectile helm helm-core highlight-current-line highlight-indent-guides highlight-indentation highlight-numbers highlight-parentheses highlight-symbol hl-todo indent-tools info+ jedi auto-complete jedi-core epc ctable concurrent know-your-http-well magit git-commit magit-popup markdown-mode markdown-preview-eww memoize monokai-theme multiple-cursors neotree nlinum org-bullets ox-gfm ox-rst org ox-twbs paradox hydra parent-mode popup pos-tip powerline projectile pkg-info epl python python-environment deferred racer f rainbow-mode recentf-ext rich-minority rust-mode s solaire-mode solarized-theme speed-type spinner toml-mode undo-tree use-package diminish bind-key volatile-highlights with-editor dash async xkcd yafolding yasnippet zenburn-theme))

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
