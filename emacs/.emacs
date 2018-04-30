;; melpa
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; org mode
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(org-indent-mode 1)

;; appearence
(load-theme 'base16-tomorrow-night t)
(add-to-list 'default-frame-alist '(font . "Source Code Pro"))
(scroll-bar-mode -1)
(show-paren-mode t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode 0)

(org-babel-do-load-languages
      'org-babel-load-languages
      '((python . t)
        (sh . t)))

;; autosave
(setq backup-directory-alist `(("." . "~/.emacs/saves")))