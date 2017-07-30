;;; package --- Summary
;;;    neotree config
;;;
;;; Commentary:
;;;    No commentary
;;;
;;; Code:


(require 'neotree)


;;;;;;;;;;;;;;
;; BEHAVIOR ;;
;;;;;;;;;;;;;;

(setq neo-buffer-name "*NeoTree*")
(setq neo-confirm-delete-file nil)
(setq neo-show-hidden-files t)
(setq neo-toggle-window-keep-p t)
(setq neo-window-fixed-size nil)
(setq neo-force-change-root t)


(defvar neotree-toggling-p nil)
(defvar neotree-safe-refresh-ready-p t)

(defun neotree-safe-refresh ()
  "Refresh neotree and set a cooldown.  Safe for use in 'buffer-list-update-hook'."
  (if (and neotree-safe-refresh-ready-p
           (not neotree-toggling-p)
           (neo-global--window-exists-p))
      (progn
       (setq neotree-safe-refresh-ready-p nil)
        (run-at-time "0.02 sec" nil
                     (lambda ()
                       (neotree-refresh t)
	               (run-at-time "0.2 sec" nil
			            (lambda ()
			              (setq neotree-safe-refresh-ready-p t))))))))
    

(add-hook 'window-configuration-change-hook 'neotree-safe-refresh)
(add-hook 'buffer-list-update-hook 'neotree-safe-refresh)


;;;;;;;;;;;;;;;;
;; APPEARANCE ;;
;;;;;;;;;;;;;;;;

(doom-themes-neotree-config)


;;;;;;;;;;
;; KEYS ;;
;;;;;;;;;;

;; C-c d = toggle neotree
(global-set-key (kbd "C-c d") '(lambda ()
                                 (interactive)
                                 (setq neotree-toggling-p t)
                                 (neotree-toggle)
                                 (setq neotree-toggling-p nil)))


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-neotree)
;;; setup-neotree.el ends here
