;;; package --- Summary
;;;    Emacs configuration

;;; Commentary:
;;;    No commentary

;;; Code:

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives
               '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(defvar settings-dir
  (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)

(mapc 'load (directory-files settings-dir t ".*\.el"))


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
