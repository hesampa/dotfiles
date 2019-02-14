(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)

;; use-package
;; install unless it is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)

;; follow symlinks without prompt
(setq vc-follow-symlinks t)

;; load emacs settings
(ido-mode -1)				; ivy-mode instead
(require 'org)
(org-babel-load-file
 (expand-file-name "conf.org" user-emacs-directory))
