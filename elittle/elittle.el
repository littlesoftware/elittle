;; elittle - the settings of emacs

;;;###autoload
(defun elittle-init ()
    "Initialize elittle settings"
    (interactive)
    (require 'elittle-config)
    (require 'elittle-keybuilding)
    
    ;; init common settings
    (elittle-config-init)
    (elittle-keybuilding-init)

    ;; init elisp settings
    (add-hook 'emacs-lisp-mode-hook 'elittle-config-elisp-init)

    ;; init C settings
    (add-hook 'c-mode-hook 'elittle-config-c-init)
    (add-hook 'c-mode-hook 'elittle-keybuilding-c-init)
    
    ;; init C++ settings
    (add-hook 'c++-mode-hook 'elittle-config-c++-init)
    (add-hook 'c++-mode-hook 'elittle-keybuilding-c++-init)
    
    )

(provide 'elittle)

;;; elittle.el ends here

