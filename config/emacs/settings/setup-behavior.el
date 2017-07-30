;;; package --- Summary
;;;    Behavioral emacs configuration

;;; Commentary:
;;;    No commentary

;;; Code:


;; Scrolling
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)

;; Make buffer names unique even if the files have the same names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Store backups in a designated folder instead of cluttering filesystem
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

;; Store auto-saves in a designated folder instead of cluttering filesystem
(setq auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "saves") t)))

;; Write customizations to custom.el and not init.el
(setq custom-file "~/.emacs.d/custom.el")

;; Starting directory ~
(setq default-directory "~/")

;; Save cursor place in buffers
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory "places"))

;; Yank with mouse middle click at cursor, not at pointer
(setq mouse-yank-at-point t)

;; Delete a letter is typed while a region is highlighted
(delete-selection-mode 1)

;; Save external copied text to kill ring even when there's a more recent kill
(setq save-interprogram-paste-before-kill t)


;; UNDO TREE ;;
(global-undo-tree-mode)


;; PROJECTILE ;;
(projectile-mode t)


;; INDENTATION ;;
;; Set default style to k&r with offset 4
(setq-default c-default-style "k&r"
	      c-basic-offset 4)
(add-hook 'c-mode-common-hook
	  (lambda()
	    (c-set-offset 'inline-open '0)
	    (c-set-offset 'inextern-lang 0)))
 
;; Don't indent with tabs
(setq-default indent-tabs-mode nil)


;; RUST ;;
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'rust-mode-hook 'cargo-ominor-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)


;; PARADOX ;;
(require 'paradox)
(paradox-enable)
;; Connect to github
(setq paradox-github-token "4e103cf7fca604c4d834fc629558db7a5863d012")

;; Don't ask to install packages
(setq paradox-execute-asynchronously t)


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-behavior)
;;; setup-behavior.el ends here
