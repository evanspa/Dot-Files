(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)
(global-set-key (kbd "C-M-g") 'dumb-jump-go)
(define-key smartparens-mode-map (kbd "C-M-b") nil) ; https://emacs.stackexchange.com/a/353
(global-set-key (kbd "C-M-b") 'dumb-jump-back)

;; cycle windows in reverse order
(defun prev-window ()
  (interactive)
  (other-window -1))
(global-set-key (kbd "C-x p") 'prev-window)

;; Clojure
(setq nrepl-log-messages t)

;;; Mac cmd key for meta
(setq mac-command-key-is-meta t
      mac-command-modifier 'meta)

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))

(load-theme 'zenburn t)
