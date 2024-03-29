(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-mode)

(add-hook 'prog-mode-hook 'rainbow-mode)

;; https://emacs.stackexchange.com/a/44690
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; https://emacs.stackexchange.com/questions/60560/error-retrieving-https-elpa-gnu-org-packages-archive-contents-error-http-400
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(toggle-frame-maximized)

(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)
(global-set-key (kbd "C-M-g") 'dumb-jump-go)
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

(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/Google Drive/My Drive/OrgRoamNotes")
  (org-roam-completion-everywhere t)
  :bind (("C-c m l" . org-roam-buffer-toggle)
         ("C-c m f" . org-roam-node-find)
         ("C-c m i" . org-roam-node-insert)
         :map org-mode-map
         ("C-M-i" . completion-at-point))
  :config
  (org-roam-setup))

(add-hook 'org-mode-hook 'turn-on-auto-fill)
