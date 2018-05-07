(package-initialize)
(require 'package)
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/") t)

(dolist (package '(use-package))
   (unless (package-installed-p package)
       (package-install package)))

(setq vc-follow-symlinks t)

(require 'org)
(org-babel-load-file
 (expand-file-name "emacs"
                   user-emacs-directory))
