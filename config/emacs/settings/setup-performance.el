;;; package --- Summary
;;;    Performance-related emacs configuration

;;; Commentary:
;;;    No commentary

;;; Code:

;; Increase garbage collector threshold for faster load.
(setq gc-cons-threshold 100000000)

;; Midnight mode purges buffers which haven't been displayed in 3 days
(require 'midnight)
(setq midnight-mode 't)

(require 'magit)
(setq magit-refresh-status-buffer nil)

(provide 'setup-performance)
;;; setup-performance.el ends here
