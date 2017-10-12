
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
 '(package-selected-packages (quote (material-theme counsel swiper company)))
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
;;(dolist (hook (list
;;'c-mode-hook
;;'c++-mode-hook
;;'emacs-lisp-mode-hook
;;'lisp-interaction-mode-hook
;;'lisp-mode-hook
;;'emms-playlist-mode-hook
;;'java-mode-hook
;;'asm-mode-hook
;;'haskell-mode-hook
;;'rcirc-mode-hook
;;'emms-lyrics-mode-hook
;;'erc-mode-hook
;;'sh-mode-hook
;;'makefile-gmake-mode-hook
;;))
;;(add-hook hook (lambda () (linum-mode 1))))
(setq linum-format "%2s ")
(global-hl-line-mode t)
(load-theme 'material-light t)
(show-paren-mode t)
(fringe-mode 0)
(recentf-mode t)
(global-company-mode t)
(global-set-key (kbd "<f7>") 'recentf-open-files)
;; swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
