;; Scrolling
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)

;; Make buffer names unique even if open files have the same names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Store backups in a designated folder instead of cluttering filesystem
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

;; Store auto-saves in a designated folder instead of cluttering filesystem
(setq auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "saves") t)))

;; Write customizations to custom.el and not init.el
(setq custom-file (concat user-emacs-directory "custom.el"))

;; Starting directory ~
(setq default-directory "~/")

;; Initial buffer
(setq initial-buffer-choice "~/docs/org/todo/todo.org")

;; Remember open buffers
(use-package desktop
  :defer 2
  :config
  (setq desktop-dirname (concat user-emacs-directory "backups")
        desktop-path (list desktop-dirname)
        desktop-save t
        desktop-load-locked-desktop nil
        desktop-restore-frames nil))
(desktop-save-mode 1)

;; Save cursor place in buffers
(require 'saveplace)
(save-place-mode 1)
(setq save-place-file (concat user-emacs-directory "places"))

;; Yank with mouse middle click at cursor, not at pointer
(setq mouse-yank-at-point t)

;; Delete highlighted region when a character is entered
(delete-selection-mode 1)

;; Save external copied text to kill ring even when there's a more recent kill
(setq save-interprogram-paste-before-kill t)

;; Always follow symlinks to files under version control
(setq vc-follow-symlinks t)


;; UNDO TREE ;;
(global-undo-tree-mode)


;; PROJECTILE ;;
(projectile-mode t)


;; INDENTATION ;;
;; Set default style to k&r with offset 4
(require 'cc-mode)
(setq c-default-style "k&r"
      c-basic-offset 4)
(add-hook 'c-mode-common-hook
	  (lambda()
	    (c-set-offset 'inline-open '0)
	    (c-set-offset 'inextern-lang 0)))

(setq-default tab-width 4)
 
;; Don't indent with tabs
(setq-default indent-tabs-mode nil)


;; RUST ;;
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'rust-mode-hook 'cargo-minor-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)


;; PARADOX ;;
(require 'paradox)
(paradox-enable)

;; Don't ask to install packages
(setq paradox-execute-asynchronously t)


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-behavior)
;;; setup-behavior.el ends here
