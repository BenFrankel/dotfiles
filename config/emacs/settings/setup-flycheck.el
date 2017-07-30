;;; package --- Summary
;;;    flycheck config
;;;
;;; Commentary:
;;;    No commentary
;;;
;;; Code:


(require 'flycheck)


;;;;;;;;;;;;;;
;; BEHAVIOR ;;
;;;;;;;;;;;;;;

;; Enable globally
(global-flycheck-mode t)

;; Use C++11 rules
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11"
                                          flycheck-clang-language-standard "c++11")))


;;;;;;;;;;;;;;;;
;; APPEARANCE ;;
;;;;;;;;;;;;;;;;

;; Show errors in tooltip
(with-eval-after-load 'flycheck
      (flycheck-pos-tip-mode))


;;;;;;;;;;
;; KEYS ;;
;;;;;;;;;;


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-flycheck)
;;; setup-flycheck.el ends here
