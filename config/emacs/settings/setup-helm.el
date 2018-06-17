;;; package --- Summary
;;;    helm config
;;;
;;; Commentary:
;;;    No commentary
;;;
;;; Code:


(require 'helm)
(require 'helm-locate)
(require 'helm-command)


;;;;;;;;;;;;;;
;; BEHAVIOR ;;
;;;;;;;;;;;;;;

(helm-mode 1)
(setq helm-M-x-fuzzy-match t)
(setq helm-locate-project-list `("~/dev/repos/"))
(setq helm-locate-fuzzy-match t)


;;;;;;;;;;;;;;;;
;; APPEARANCE ;;
;;;;;;;;;;;;;;;;

(setq helm-display-header-line nil)
(helm-autoresize-mode 1)
(setq helm-autoresize-max-height 30)
(setq helm-autoresize-min-height 30)
(setq helm-split-window-inside-p t)


;;;;;;;;;;
;; KEYS ;;
;;;;;;;;;;

;; M-x = execute command
(global-set-key (kbd "M-x") 'helm-M-x)
;; C-x C-f = file switch
(global-set-key (kbd "C-x C-f") 'helm-find-files)
;; C-c f = locate file
(global-set-key (kbd "C-c f") 'helm-locate)
;; C-c s = search inside of buffers
(global-set-key (kbd "C-c s") 'helm-do-ag-buffers)
;; C-c p = search inside of project
(global-set-key (kbd "C-c .") 'helm-do-ag-project-root)
;; C-x b = buffer switch
(global-set-key (kbd "C-x b") 'helm-mini)
;; M-y = kill ring
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
;; C-x r i = register
(global-set-key (kbd "C-x r i") 'helm-register)


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-helm)
;;; setup-helm.el ends here
