;; elittle-keybuilding - the keybuilding of elittle 

(defun elittle-keybuilding-init ()
    "Initialize common keybuilding"
    (interactive)
    (global-unset-key (kbd "M-e"))
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
    (global-set-key (kbd "M-e w") 'delete-window)
    (global-set-key (kbd "M-3") 'bs-show)
    )

(defun elittle-keybuilding-c-c++-init ()
    "Initialize C/C++ keybuilding"
    (local-set-key (kbd "M-4") 'ff-find-other-file)
    (local-set-key (kbd "M-5") 'compile-dwim)
    (local-set-key (kbd "M-e 5") 'compile-dwin-new-command)
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

