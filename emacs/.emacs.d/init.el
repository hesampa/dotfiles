(setq package-user-dir "~/.emacs.d/elpa")

(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; update the package metadata is the local cache is missing
(unless package-archive-contents
  (package-refresh-contents))

(dolist (package '(use-package))
   (unless (package-installed-p package)
       (package-install package)))

;; follow symlinks without prompt
(setq vc-follow-symlinks t)

(require 'org)
(org-babel-load-file
 (expand-file-name "emacs"
                   user-emacs-directory))
