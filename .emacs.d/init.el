; ----
; package
; ----
(require 'package)
(package-initialize)

;(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

; helm
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)

; company
(require 'company)
(global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(setq company-selection-wrap-around t)
(define-key company-active-map (kbd "M-n") nil)
(define-key company-active-map (kbd "M-p") nil)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-h") nil)
 ;markdown-mode
(setq markdown-command "multimarkdown")

; ----
; language
; ----
(setq default-input-method "MacOSX")
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

; ----------------
; key bind
; ----------------
;; C-h
(global-set-key "\C-h" 'delete-backward-char)
;; help
(global-set-key "\C-c\C-h" 'help-command)
;; comment out
(global-set-key "\C-c;" 'comment-dwim)
;; window operation
(global-set-key "\C-t" 'other-window)
;; undo
(define-key global-map (kbd "C-z") 'undo)

; ----
; preferences
; ----
(load-theme 'zenburn t)
; startup message
(setq inhibit-startup-message 1)
(if (eq window-system 'x)
    (menu-bar-mode 1) (menu-bar-mode 0))
(menu-bar-mode nil)
(setq initial-scratch-message "")
; backup
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq delete-auto-save-files t)
(setq auto-save-default nil)
;beep
(defun next-line (arg)
  (interactive "p")
  (condition-case nil
      (line-move arg)
    (end-of-buffer)))

(electric-pair-mode 1)

(setq-default tab-width 4 indent-tabs-mode nil)

(setq inhibit-startup-message t)

(column-number-mode t)

(global-linum-mode t)

(setq scroll-conservatively 1)

(show-paren-mode 1)

(menu-bar-mode -1)

(tool-bar-mode -1)

;allow symlink
(setq vc-follow-symlinks t)
(setq auto-revert-check-vc-info t)

(display-time)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (vue-mode zenburn-theme auto-complete yaml-mode php-mode neotree markdown-mode init-loader golint go-mode go-autocomplete dockerfile-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
