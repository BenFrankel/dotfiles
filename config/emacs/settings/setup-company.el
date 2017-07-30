;;; package --- Summary
;;;    company config
;;;
;;; Commentary:
;;;    No commentary
;;;
;;; Code:


(require 'company)
(require 'company-c-headers)


;;;;;;;;;;;;;;
;; BEHAVIOR ;;
;;;;;;;;;;;;;;

(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/5.4.0")


;;;;;;;;;;;;;;;;
;; APPEARANCE ;;
;;;;;;;;;;;;;;;;


;;;;;;;;;;
;; KEYS ;;
;;;;;;;;;;

;; <tab> = complete or indent
(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-company)
;;; setup-company.el ends here
