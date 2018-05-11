(package-initialize)
(require 'package)
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/") t)

(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))

;; update the package metadata is the local cache is missing
(unless package-archive-contents
  (package-refresh-contents))

(dolist (package '(use-package))
   (unless (package-installed-p package)
       (package-install package)))

;; follow symlinks without prompt
(setq vc-follow-symlinks t)

(use-package org
	     :ensure t
	     :config
	     (org-babel-load-file
	       (expand-file-name "emacs"
				 user-emacs-directory))
	     )
