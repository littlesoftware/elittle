;; elittle-keybuilding - the keybuilding of elittle 

(defun elittle-keybuilding-init ()
    "Initialize common keybuilding"
    (interactive)
    (global-unset-key (kbd "M-e"))
    (global-unset-key (kbd "M-w"))
    (global-unset-key (kbd "M-r"))
    ;; navigation
    (global-set-key (kbd "M-h") 'backward-char)     ; <
    (global-set-key (kbd "M-l") 'forward-char)      ; >
    (global-set-key (kbd "M-k") 'previous-line)     ; ^
    (global-set-key (kbd "M-j") 'next-line)         ; v
    ;; return
    (global-set-key (kbd "RET") 'newline-and-indent)
    ;; exit from emacs
    (global-set-key (kbd "M-e q") 'save-buffers-kill-terminal)
    ;; edit
    (global-set-key (kbd "M-c") 'kill-ring-save)
    (global-set-key (kbd "M-v") 'yank)
    (global-set-key (kbd "M-z") 'kill-region)
    (global-set-key (kbd "M-/") 'undo)
    (global-set-key (kbd "M-1") 'set-mark-command)
    (global-set-key (kbd "M-8") 'kill-whole-line)
    ;; window  and buffer of file
    (global-set-key (kbd "M-e n") 'new-empty-buffer)
    (global-set-key (kbd "M-e s") 'save-buffer)
    (global-set-key (kbd "M-2") 'save-buffer)
    (global-set-key (kbd "M-e o") 'ido-find-file)
    (global-set-key (kbd "M-e b") 'close-current-buffer)
    (global-set-key (kbd "M-w w") 'delete-window)
    (global-set-key (kbd "M-w 5") 'split-window-horizontally)
    (global-set-key (kbd "M-w '") 'split-window-vertically)
    (global-set-key (kbd "M-w o") 'other-window)
    (global-set-key (kbd "M-0") 'other-window)
    (global-set-key (kbd "M-3") 'bs-show)
    (global-set-key (kbd "M-w M-l") 'windmove-right)
    (global-set-key (kbd "M-w M-k") 'windmove-up)
    (global-set-key (kbd "M-w M-j") 'windmove-down)
    (global-set-key (kbd "M-w M-h") 'windmove-left)
    (global-set-key (kbd "M-u") 'scroll-up-command)
    (global-set-key (kbd "M-i") 'scroll-down-command)
    (global-set-key (kbd "M-e j") 'end-of-buffer)
    (global-set-key (kbd "M-e k") 'beginning-of-buffer)
    (global-set-key (kbd "M-m") 'scroll-up-line)
    (global-set-key (kbd "M-,") 'scroll-down-line)
    (global-set-key (kbd "M-w l") 'my-window-horz)
    (global-set-key (kbd "M-w L") 'my-window-50-horz)
    (global-set-key (kbd "M-w k") 'my-window-vert)
    (global-set-key (kbd "M-w K") 'my-window-50-vert)
    ;; find
    (global-set-key (kbd "M-e f") 'isearch-forward-symbol-at-point)
    (global-set-key (kbd "M-e F") 'isearch-forward-regexp)
    ;; sr-speedbar
    (global-set-key (kbd "M-e 1") 'sr-speedbar-toggle)
    ;; projectile prefix
    (define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
    )

(defun elittle-keybuilding-hs-init ()
    "Initialize hs mode keybuildings"
    (local-set-key (kbd "M-=") 'hs-toggle-hiding)
    (local-set-key (kbd "M-e =") 'hs-show-all)
    (local-set-key (kbd "M-e -") 'hs-hide-all))

(defun elittle-keybuilding-c-c++-init ()
    "Initialize C/C++ keybuilding"
    (local-set-key (kbd "M-4") 'ff-find-other-file)
    (local-set-key (kbd "M-5") 'compile-dwim)
    (local-set-key (kbd "M-e 5") 'compile-dwin-new-command)
    ;; hs-minor-mode
    (elittle-keybuilding-hs-init)
    )

(defun elittle-keybuilding-c-init ()
    "Initialize C keybuilding"
    (interactive)
    (elittle-keybuilding-c-c++-init)
    )

(defun elittle-keybuilding-c++-init ()
    "Initialize C++ keybuilding"
    (interactive)
    (elittle-keybuilding-c-c++-init)
    )

(provide 'elittle-keybuilding)

;;; elittle-keybuilding.el ends here

