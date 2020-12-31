;; elittle-config - the config of elittle

(defun elittle-config-styles-init ()
    "Initialize C/C++ style"
    ;; add C/C++ style
    (c-add-style "elittle-style"
                 '("linux"
                   (indent-tabs-mode . nil)      ; use spaces rather then tabs
                   (c-basic-offset . 4)          ; indent by four spaces
                   (c-offsets-alist . ((inline-open . 0)     ; custom indentation rules
                                       (brace-list-open . 0)
                                       (statement-case-open . +)))))
    )

(defun elittle-config-theme-init ()
    "Initialize common theme"
    (use-package doom-themes
        :config
        ;; global settings
        (setq doom-themes-enable-bold t
              doom-themes-enable-italic t)
        (load-theme 'doom-one t)
        ;; enable flashing mode-line on errors
        (doom-themes-visual-bell-config)
        ;; enable custom neotree theme
        (doom-themes-neotree-config)
        ;; or for treeemacs users
        (setq doom-themes-treemacs-theme "doom-colors")
        (doom-themes-treemacs-config)
        ;; corrects org-mode's native fontification
        (doom-themes-org-config)
        )
    )

(defun elittle-config-init ()
    "Initialize common config"
    (interactive)
    ;; load theme
    (elittle-config-theme-init)
    ;; standart settings
    (setq show-paren-style 'parantthesis)   ; selection
    (show-paren-mode 1)
    (menu-bar-mode -1)
    (tool-bar-mode -1)
    (scroll-bar-mode -1)
    (blink-cursor-mode -1)
    (tooltip-mode -1)
    (setq use-dialog-box nil)   ; no use gui dialog
    (setq redisplay-dont-pause t)
    (setq inhibit-splash-screen t)
    (setq inhibit-startup-message t)
    (column-number-mode)        ; show column number
    (toggle-truncate-lines)
    ;; buckup
    (setq make-backup-file nil)
    (setq auto-save-list-file-name nil)
    (setq auto-save-default nil)
    (setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
          backup-by-copying   t   ; Dont't de-link hard links
          version-control     t   ; Use version number on backups
          delete-old-version  t   ; Automatically delete excess backups
          kept-new-versions   20  ; how many of the newest versions to keep
          kept-old-versions   5)  ; and how many of the old
    ;; electric pair
    (electric-pair-mode 1)      ; auto close {} [] ()
    (electric-indent-mode 1)
    (delete-selection-mode t)
    ;; indent
    (setq-default indent-tabs-mode nil)
    (setq-default tab-width 4)
    (setq-default standart-indent 4)
    ;; smoth scrolling
    (setq scroll-step 1)
    (setq scroll-margin 10)
    (setq scroll-conservetively 10)
    ;; short message
    (defalias 'yes-or-no-p 'y-or-n-p)
    ;; clipboard
    (setq x-select-enable-clipboard t)
    ;; search
    (setq search-highlight t)
    (setq query-replace-highlight t)
    ;; set h-file as C++ mode
    (add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
    ;; add styles
    (elittle-config-styles-init)
    ;; load custom functions
    (load "functions")
    ;; plugins
    ;; plugin linum+
    (require 'linum+)
    (setq linum-format "%-3d")
    (global-linum-mode 1)
    ;; plugin popup
    (use-package popup
        :init)
    ;; plugin auto-complete
    (use-package auto-complete
        :init
        (ac-config-default))
    ;; plugin yasnippet
    (use-package yasnippet
        :init
        (yas-global-mode 1))
    (use-package yasnippet-snippets
        :init)
    ;; plugin iedit
    (use-package iedit
        :init)
    ;; built-in ido
    (require 'ido)
    (ido-mode t)
    (setq ido-enable-flex-matching t)
    ;; built-in bs
    (require 'bs)
    (setq bs-configurations
          '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
    ;; plugin sr-speedbar
    (use-package sr-speedbar
        :init)
    ;; plugin projectile
    (use-package projectile
        :init
        (projectile-mode 1))
    ;; built-in find-file
    (require 'find-file)
    ;; plugin imenu
    (use-package imenu
        :init
        (setq imenu-auto-rescan t)
        (setq imenu-use-popup-menu nil))
    )

(defun elittle-config-elisp-init ()
    "Initialize emacs lisp config"
    (interactive)
    (setq lisp-body-indent 4)
    (setq lisp-indent-function 'common-lisp-indent-function)
    )

(defun elittle-config-c-c++-init ()
    "Initialize C/C++ config"
    ;; indent
    (c-set-style "elittle-style")
    (auto-fill-mode)
    ;;(c-toggle-auto-hungry-state 1)
    ;; switching
    (setq cc-other-file-alist
          '(("\\.c" (".h"))
            ("\\.cpp" (".h"".hpp"))
            ("\\.h" (".cpp"".c"))))
    (setq ff-search-directories
          '("." "../src" "../include"))
    )

(defun elittle-config-c-init ()
    "Initialize C config"
    (interactive)
    (elittle-config-c-c++-init)
    )

(defun elittle-config-c++-init ()
    "Initialize C++ config"
    (interactive)
    (elittle-config-c-c++-init)
    )

(provide 'elittle-config)

;;; elittle-config.el ends here

