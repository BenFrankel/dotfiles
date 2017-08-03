;;; package --- Summary
;;;    Emacs configuration

;;; Commentary:
;;;    No commentary

;;; Code:


;; Load init-packages.el
(load (expand-file-name "init-packages.el" user-emacs-directory))

;; Load settings
(defvar settings-dir
  (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)
(mapc 'load (directory-files settings-dir t ".*\.el"))


;; PACKAGES ;;
(require 'init-packages)
(package-initialize)

;; PERFORMANCE ;;
(require 'setup-performance)

;; BEHAVIOR ;;
(require 'setup-behavior)

;; APPEARANCE ;;
(require 'setup-appearance)

;; KEYS ;;
(require 'setup-keys)

;; CUSTOM ;;
(load custom-file)

;; Enable all commands
(setq disabled-command-function nil)

;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'init)
;;; init.el ends here
