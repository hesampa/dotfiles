(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(dolist (package '(use-package))
   (unless (package-installed-p package)
       (package-install package)))

;; follow symlinks without prompt
(setq vc-follow-symlinks t)

(require 'org)
(org-babel-load-file
 (expand-file-name "conf.org"
                   user-emacs-directory))
