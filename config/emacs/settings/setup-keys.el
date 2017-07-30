;;; package --- Summary
;;;    Emacs key bindings

;;; Commentary:
;;;    No commentary

;;; Code:


;; DUPLICATE ;;
;; M-c = duplicate
(global-set-key (kbd "M-c") 'duplicate-thing)


;; EXPAND ;;
;; M-m = expand region
(global-set-key (kbd "M-m") 'er/expand-region)


;; NAVIGATE SYMBOLS ;;
;; M-n = next symbol
(global-set-key (kbd "M-n") 'highlight-symbol-next)
;; M-p = prev symbol
(global-set-key (kbd "M-p") 'highlight-symbol-prev)


;; MULTIPLE CURSORS ;;
;; C-S-c C-S-c = edit lines
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;; C-> = mark next match
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
;; C-< = mark previous match
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;; C-c C-< = mark all matches
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;; MAGIT ;;
;; C-x g = status
(global-set-key (kbd "C-x g") 'magit-status)
;; C-x M-g = dispatch
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
;; C-c M-g = file mode
(global-magit-file-mode t)


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-keys)
;;; setup-keys.el ends here
