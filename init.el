
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes
   (quote
    ("5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" default)))
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (emmet-mode ivy magit-popup doom-themes airline-themes spacemacs-theme ace-jump-mode magit material-theme counsel swiper company)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#FFFFFF" :foreground "#333333" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 158 :width normal :foundry "PfEd" :family "Input Mono")))))
(setq inhibit-startup-message t)
;;(setq skeleton-pair t)
(setq user-mail-address "xuheng_lumia@outlook.com")
(electric-pair-mode t)
(electric-indent-mode t)
;;(require linum-mode)
(global-linum-mode t)
(setq linum-format "%2s ")
(global-hl-line-mode t)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq make-backup-file-name-function nil)
;;(require 'airline-themes)
;;(require 'doom-themes)
(load-theme 'spacemacs-light t)

(show-paren-mode t)
(fringe-mode 0)
(recentf-mode t)
(global-company-mode t)
(global-set-key (kbd "<f7>") 'recentf-open-files)
(global-set-key (kbd "C-x g") 'magit-status)
;; swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(require 'emmet-mode)
   (add-to-list 'load-path "~/Emacs/emmet/")
   (require 'emmet-mode)
   (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
   (add-hook 'html-mode-hook 'emmet-mode)
   (add-hook 'css-mode-hook  'emmet-mode)

(setq default-tab-width 4)
(setq c-default-style "Linux")
(setq c-basic-offset 4)
(setq company--idle-delay 0.1)
