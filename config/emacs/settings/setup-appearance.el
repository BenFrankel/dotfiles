;; UI ELEMENTS ;;
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(when (fboundp 'horizontal-scroll-bar-mode)
  (horizontal-scroll-bar-mode -1))


;; COLOR THEME ;;
(require 'doom-themes)
(require 'doom-molokai-theme)
(setq doom-molokai-brighter-comments t)
(load-theme 'doom-molokai t)


;; LINE NUMBERS
(require 'nlinum)
(setq nlinum-format "%4d ")
(setq nlinum-highlight-current-line t)
(add-hook 'prog-mode-hook 'nlinum-mode)
(add-hook 'web-mode-hook 'nlinum-mode)
(set-face-attribute 'linum nil
                    :height 80)
(set-face-attribute 'nlinum-current-line nil
                    :inherit 'linum
                    :weight 'bold
                    :foreground "#00bcd4")


;; CURSOR ;;
(setq-default cursor-type 'bar)
(blink-cursor-mode)
(setq blink-cursor-blinks -1)
(setq blink-cursor-delay 1.5)
(setq blink-cursor-interval 0.5)
(set-cursor-color "#00bcd4")


;; POINTER ;;
(setq void-text-area-pointer 'text)


;; DEFAULT FONT ;;
(set-face-attribute 'default nil
                    :family "Hack"
                    :height 100)


;; FRINGES ;;
(setq-default fringes-outside-margins t)
(fringe-mode '(8 . 0))
(set-face-attribute 'fringe nil :inherit 'linum)


;; LINE WRAPPING ;;
(setq-default word-wrap t)
(setq-default truncate-lines nil)
(add-hook 'prog-mode-hook '(lambda ()
                             (setq truncate-lines t)))
(add-hook 'web-mode-hook '(lambda ()
                             (setq truncate-lines t)))


;; FILL COLUMN ;;
;; TODO: Causes visual glitch in company-mode (https://github.com/company-mode/company-mode/issues/180)
;; TODO: Causes a visual glitch in web-mode (https://github.com/alpaker/Fill-Column-Indicator/issues/46)
;; (require 'fill-column-indicator)
;; (setq fci-rule-color "#303030")
;; (setq fci-rule-use-dashes t)
;; (setq fci-rule-column 86)
;; (setq fci-handle-truncate-lines nil)
;; (defun auto-fci-mode ()
;;   "Set fci-mode if window is wide enough."
;;   (if (and (derived-mode-p 'prog-mode)
;;            (> (window-width) (+ 5 fci-rule-column)))
;;       (fci-mode 1)
;;     (fci-mode 0)))
;; (add-hook 'prog-mode-hook 'auto-fci-mode)
;; (add-hook 'window-configuration-change-hook 'auto-fci-mode)


;; HIGHLIGHT CURRENT LINE ;;
(require 'highlight-current-line)
(highlight-current-line-on t)
(highlight-current-line-set-bg-color "#26282c")


;; HIGHLIGHT MATCHING PARENTHESES ;;
(require 'highlight-parentheses)
(add-hook 'prog-mode-hook 'highlight-parentheses-mode)
(add-hook 'web-mode-hook 'highlight-parentheses-mode)
(add-hook 'prog-mode-hook 'show-paren-mode)
(add-hook 'web-mode-hook 'show-paren-mode)
(setq hl-paren-delay 0)
(setq hl-paren-background-colors
      '("#b1214b" "#f37946" "#d0a020" "#60b040" "#007db8" "#9840ab"
        "#b1214b" "#f37946" "#d0a020" "#60b040" "#007db8" "#9840ab"))
(setq hl-paren-colors
      '("white" "white" "white" "white" "white" "white"
        "white" "white" "white" "white" "white" "white"))


;; HIGHLIGHT MATCHING SYMBOLS ;;
(require 'highlight-symbol)
(highlight-symbol-nav-mode)
(add-hook 'prog-mode-hook 'highlight-symbol-mode)
(add-hook 'web-mode-hook 'highlight-symbol-mode)
(setq highlight-symbol-idle-delay 0.5)
(setq highlight-symbol-on-navigation-p t)


;; HIGHLIGHT NUMERALS ;;
(add-hook 'prog-mode-hook 'highlight-numbers-mode)
(add-hook 'web-mode-hook 'highlight-numbers-mode)


;; HIGHLIGHT TODO ;;
(add-hook 'prog-mode-hook 'hl-todo-mode)
(add-hook 'web-mode-hook 'hl-todo-mode)


;; VOLATILE HIGHLIGHTS ;;
(require 'volatile-highlights)
(volatile-highlights-mode t)


;; RAINBOW MODE ;;
(add-hook 'web-mode-hook 'rainbow-mode)
(add-hook 'html-mode-hook 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)


;; GUI SETTINGS ;;
(defun my-frame-config (frame)
  "Custom behaviours for new frames."
  (with-selected-frame frame
    (when (display-graphic-p)
      (set-background-color "#253036")
      (set-foreground-color "#a4aeb3"))))

(add-hook 'after-make-frame-functions 'my-frame-config)


;;;;;;;;;
;; FIN ;;
;;;;;;;;;

(provide 'setup-appearance)
;;; setup-appearance.el ends here
