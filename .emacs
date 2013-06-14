;; Load plugins

(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/packages/emacs-color-theme-solarized/")
(load-theme 'solarized-dark t)

(autoload 'project-mode "project-mode" "Project Mode" t)
(require 'linum)
(global-linum-mode)

;; General

(set-language-environment "UTF-8")
(setq tab-stop-list (number-sequence 4 200 4))
(setq js-indent-level 4)
(setq-default indent-tabs-mode nil)

;; Custom file

;;(setq custom-file "~/.emacs-custom.el")
;;(load custom-file)

;; Put backup files in a directory

(defun make-backup-file-name (file)
  (concat "~/.backup/" (file-name-nondirectory file) "~"))

;; Replace all freakin' ^M chars in the current buffer

(fset 'replace-ctrlms
   [escape ?< escape ?% ?\C-q ?\C-m return ?\C-q ?\C-j return ?!])
(global-set-key "\C-cm" 'replace-ctrlms)

;; Scroll several lines

(global-set-key (kbd "C-n")
   (lambda () (interactive) (next-line 5)))

(global-set-key (kbd "C-p")
   (lambda () (interactive) (next-line -5)))

;; Uniquify buffer names

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
