;; melpa
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; magit
(require 'magit)

;; org mode
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(org-indent-mode 1)

;; expand region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; linum
(require 'linum-relative)
(linum-relative-global-mode)

;; appearence
(require 'base16-theme)
(load-theme 'base16-tomorrow-night t)
(add-to-list 'default-frame-alist '(font . "Dina"))
(scroll-bar-mode -1)
(show-paren-mode t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode 0)
(setq ring-bell-function 'ignore)

(org-babel-do-load-languages
      'org-babel-load-languages
      '((python . t)
        (sh . t)))

;; autosave
(setq backup-directory-alist `((".*" . ,"~/.emacs.d/saves")))
(setq auto-save-file-name-transforms `((".*" ,"~/.emacs.d/backup" t)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (magit python-mode linum-relative expand-region base16-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
