;(add-to-list 'load-path "~/.emacs.d/")
(load-file "~/.emacs.d/molokai-theme.el")
(global-set-key '[f3] 'man)

(custom-set-variables
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 )

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(add-to-list 'load-path "/Users/sjq/.emacs.d/")

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/sjq/.emacs.d//ac-dict")
(ac-config-default)

(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

(ac-set-trigger-key "TAB")

(defun my-shell-hook ()
  (local-set-key "\C-cl" 'erase-buffer))
(add-hook 'shell-mode-hook 'my-shell-hook)
(put 'erase-buffer 'disabled nil)

(setq command-line-default-directory "/Users/sjq/")

(add-hook 'prog-mode-hook 'linum-mode)

(global-set-key (kbd "C-M-k") 'kill-sexp)

;(mapc 'load (directory-files "~/.emacs.d/custom" t ".*\.el"))
