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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (hydra ace-window exwm multi-line magit python-mode linum-relative expand-region base16-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
