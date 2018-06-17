;;; package --- Summary
;;;    ace config
;;;
;;; Commentary:
;;;    No commentary
;;;
;;; Code:

(use-package projectile
  :bind (("C-c p" . hydra-projectile/body)
	 :map projectile-mode-map
	 ("C-c p" . hydra-projectile/body))
  :init
  (setq projectile-keymap-prefix (kbd "C-c C-p"))
  :config

  (setq projectile-completion-system 'default)
  
  (setq projectile-require-project-root nil)

  (setq projectile-enable-caching t)

  (setq projectile-project-root-files-bottom-up
        (delete ".git" projectile-project-root-files-bottom-up))
  (add-to-list 'projectile-project-root-files ".git")

  (setq projectile-project-root-files-functions
        '(projectile-root-local
          projectile-root-top-down
          projectile-root-bottom-up))
  
  (defhydra hydra-projectile-other-window (:color teal)
    "projectile-other-window"
    ("f"  projectile-find-file-other-window        "file")
    ("g"  projectile-find-file-dwim-other-window   "file dwim")
    ("d"  projectile-find-dir-other-window         "dir")
    ("b"  projectile-switch-to-buffer-other-window "buffer")
    ("q"  nil                                      "cancel" :color blue))

  (defhydra hydra-projectile (:color teal :hint nil)
    "
     PROJECTILE: %(projectile-project-root)

     Find File            Search/Tags          Buffers                Cache
------------------------------------------------------------------------------------------
  _F_: file            _a_: ag                _i_: Ibuffer           _c_: cache clear
 _ff_: file dwim       _g_: update gtags      _b_: switch to buffer  _x_: remove known project
 _fd_: file curr dir   _o_: multi-occur       _K_: Kill all buffers  _X_: cleanup non-existing
  _r_: recent file                                               ^^^^_z_: cache current
  _d_: dir

"
    ("a"   projectile-ag)
    ("b"   projectile-switch-to-buffer)
    ("c"   projectile-invalidate-cache)
    ("d"   projectile-find-dir)
    ("F"   projectile-find-file)
    ("ff"  projectile-find-file-dwim)
    ("fd"  projectile-find-file-in-directory)
    ("g"   ggtags-update-tags)
    ("i"   projectile-ibuffer)
    ("K"   projectile-kill-buffers)
    ("m"   projectile-multi-occur)
    ("o"   projectile-multi-occur)
    ("p"   projectile-switch-project "switch project")
    ("s"   projectile-switch-project)
    ("r"   projectile-recentf)
    ("x"   projectile-remove-known-project)
    ("X"   projectile-cleanup-known-projects)
    ("z"   projectile-cache-current-file)
    ("`"   hydra-projectile-other-window/body "other window")
    ("q"   nil "cancel" :color blue))

  (projectile-mode))


(provide 'setup-projectile)
;;; setup-projectile.el ends here
