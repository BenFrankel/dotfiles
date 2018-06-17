(use-package org
  :bind (:map org-mode-map
	 ("M-n" . outline-next-visible-heading)
	 ("M-p" . outline-previous-visible-heading)
         ("C-M-w" . org-table-copy-region)
         ("C-M-y" . org-table-paste-rectangle)
         ("C-M-l" . org-table-sort-lines)
         ("C-y" . yank))
  
  :config
  
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
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append))

(use-package org-bullets
  :config

  ;; Use fancy org bullets
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

  ;; Use fancy org ellipsis
  (setq org-ellipsis nil)

  ;; IDK what this does
  (setq org-fontify-done-headline t)
  (setq org-fontify-quote-and-verse-blocks t)
  (setq org-fontify-whole-heading-line t))


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-org)
;;; setup-org.el ends here
