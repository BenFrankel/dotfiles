;;; package --- Summary
;;;    org-mode config
;;;
;;; Commentary:
;;;    No commentary
;;;
;;; Code:


(require 'org)
(require 'org-bullets)


;;;;;;;;;;;;;;
;; BEHAVIOR ;;
;;;;;;;;;;;;;;

(setq org-startup-truncated nil)
(setq org-hide-leading-stars t)
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)
(setq org-log-done 'time)
(setq org-special-ctrl-a/e t)

(add-hook 'org-mode-hook 'org-indent-mode)

;; Change TODO to DONE when all children are DONE
(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;; Babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (C . t)
   (java . t)
   (ruby . t)
   (haskell . t)
   (perl . t)
   (makefile . t)
   (shell . t)
   (latex . t)))
(setq org-confirm-babel-evaluate nil)
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)


;;;;;;;;;;;;;;;;
;; APPEARANCE ;;
;;;;;;;;;;;;;;;;

;; Use fancy org bullets
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Use fancy org ellipsis
(setq org-ellipsis "  ")

;; IDK what this does
(setq org-fontify-done-headline t)
(setq org-fontify-quote-and-verse-blocks t)
(setq org-fontify-whole-heading-line t)


;;;;;;;;;;
;; KEYS ;;
;;;;;;;;;;
(add-hook 'org-mode-hook
	  (lambda ()
	    (local-set-key (kbd "M-n") 'outline-next-visible-heading)
	    (local-set-key (kbd "M-p") 'outline-previous-visible-heading)
	    (local-set-key (kbd "C-M-w") 'org-table-copy-region)
	    (local-set-key (kbd "C-M-y") 'org-table-paste-rectangle)
	    (local-set-key (kbd "C-M-l") 'org-table-sort-lines)
	    (local-set-key (kbd "C-y") 'yank)))


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-org)
;;; setup-org.el ends here
