;;; package --- Summary
;;;    ace config
;;;
;;; Commentary:
;;;    No commentary
;;;
;;; Code:


(require 'ace-jump-mode)


;;;;;;;;;;;;;;
;; BEHAVIOR ;;
;;;;;;;;;;;;;;

;; Jump within the current window
(setq ace-jump-mode-scope 'window)

;; Fix line mode
(defun ace-jump-line-mode ()
    "AceJump line mode.
Marked each no empty line and move there"
  (interactive)
  (if ace-jump-current-mode (ace-jump-done))
  (setq ace-jump-current-mode 'ace-jump-line-mode)
  (ace-jump-do "^[^\n]"))


;;;;;;;;;;;;;;;;
;; APPEARANCE ;;
;;;;;;;;;;;;;;;;

;; Black background during jump
(set-face-attribute 'ace-jump-face-background nil
                    :background "#000000")

;; Use a-z then A-Z then 0-9
(setq ace-jump-mode-move-keys
      (nconc (loop for i from ?a to ?z collect i)
             (loop for i from ?A to ?Z collect i)
             (loop for i from ?0 to ?9 collect i)))


;;;;;;;;;;
;; KEYS ;;
;;;;;;;;;;

;; C-c C-<space> = jump to line
(global-set-key (kbd "C-c C-SPC") 'ace-jump-line-mode)
;; C-c <space> = jump to char
(global-set-key (kbd "C-c SPC") 'ace-jump-char-mode)


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-ace)
;;; setup-ace.el ends here
