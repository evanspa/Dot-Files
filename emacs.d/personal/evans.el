(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)

; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(package-selected-packages
;;   '(aggressive-indent rainbow-delimiters exec-path-from-shell ag magit cider paredit dumb-jump zenburn-theme helm)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Helm config
;; (global-set-key (kbd "M-x") 'helm-M-x);
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
;;(global-set-key (kbd "C-x C-r") 'helm-recentf)
;; (helm-mode 1)

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

;; Use latest Bash installed from homebrew
(setq explicit-shell-file-name "/usr/local/bin/bash")
(setq shell-file-name "bash")
(setq explicit-bash.exe-args '("--noediting" "--login" "-i"))
(setenv "SHELL" shell-file-name)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))

(load-theme 'zenburn t)
