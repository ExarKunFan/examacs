;;; package --- Summary
;;; Commentary:
;;; Flycheck warns without this comments -_-
;;; it's Exar's personal config


(require 'package)

;;; Code:

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
;;(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fancy-splash-image nil)
 '(inhibit-startup-buffer-menu nil)
 '(inhibit-startup-screen t)
 '(initial-major-mode 'org-mode)
 '(initial-scratch-message "")
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(org-support-shift-select t)
 '(package-selected-packages
   '(ace-jump-buffer counsel-org-capture-string org-pomodoro org-projectile org-super-agenda smartparens anaconda-mode ace-window pipenv which-key use-package telephone-line orgit org-bullets ivy-youtube ivy-todo darktooth-theme counsel-projectile avy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; init.el ends here
