;; melpa
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; EVIL mode
(require 'powerline-evil)
(powerline-evil-vim-color-theme)
(require 'evil)
(add-to-list 'evil-insert-state-modes 'view-mode)
(evil-mode 1)

;; optional: this is the evil state that evil-magit will use
;; (setq evil-magit-state 'normal)

;; optional: disable additional bindings for yanking text
;; (setq evil-magit-use-y-for-yank nil)
(require 'evil-magit)

(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)

(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd ";") 'evil-ex)
(define-key evil-normal-state-map (kbd "]b") 'next-buffer)
(define-key evil-normal-state-map (kbd "[b") 'previous-buffer)

(define-key evil-normal-state-map (kbd "M-l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "M-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "M-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "M-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "M-q") 'evil-quit)

(global-set-key (kbd ";") 'execute-extended-command)

;; PLUGINS
(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'evil-commentary)
(evil-commentary-mode)

;; org mode
(require 'org-evil)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(org-indent-mode)

;; relative line numbers
(require 'linum-relative)
(linum-relative-global-mode)

;; appearence
(load-theme 'base16-tomorrow-night t)
(menu-bar-mode -1)
(add-to-list 'default-frame-alist '(font . "Dina-10"))

(org-babel-do-load-languages
      'org-babel-load-languages
      '((python . t)
        (sh . t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" default)))
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (base16-theme pdf-tools multi-term ace-window evil-magit evil-embrace smooth-scroll color-theme-sanityinc-tomorrow dracula-theme linum-relative evil)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Dina" :foundry "unknown" :slant normal :weight normal :height 100 :width normal)))))
