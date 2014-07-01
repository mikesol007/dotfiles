(setq load-path (cons "/usr/share/emacs/site-lisp" load-path))
(setq load-path (cons "/usr/share/emacs/21.2/site-lisp" load-path))
(setq load-path (cons "/usr/share/emacs/21.2/lisp" load-path))
(setq load-path (cons "~/emacs" load-path))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(dired-listing-switches "-alh")
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\.svn$")
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(server-mode t)
 '(show-paren-mode t)
 '(show-paren-style (quote mixed))
 '(tempbuf-life-extension-ratio 3)
 '(tempbuf-minimum-timeout 900)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(truncate-partial-width-windows nil)
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq-default filladapt-mode t)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;;(add-hook 'python-mode-hook 'turn-on-auto-fill)
(add-hook 'html-mode-hook 'turn-on-auto-fill)
(add-hook 'fundamental-mode-hook 'turn-on-auto-fill)

(add-to-list 'auto-mode-alist '("\\.pt$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.cpt$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.zpt$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.css.dtml$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.kss$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.zcml$" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.metadata$" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.properties$" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.vpy$" . python-mode))
(add-to-list 'auto-mode-alist '("\\.cpy$" . python-mode))

(require 'dired-x)

;; (require 'tempbuf)
;; (add-hook 'find-file-hooks 'turn-on-tempbuf-mode)
;; (add-hook 'dired-mode-hook 'turn-on-tempbuf-mode)
;; (add-hook 'custom-mode-hook 'turn-on-tempbuf-mode)
;; (add-hook 'w3-mode-hook 'turn-on-tempbuf-mode)
;; (add-hook 'Man-mode-hook 'turn-on-tempbuf-mode)
;; (add-hook 'view-mode-hook 'turn-on-tempbuf-mode)
;; (add-hook 'message-mode-hook 'turn-on-tempbuf-mode)
;; (add-hook 'pdb-mode-hook 'turn-on-tempbuf-mode)

;; Customizations for the Mac
(setq x-select-enable-clipboard t)   ;; supposed to merge the kill ring w/ clipboard
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'meta)
;;(setq mac-fn-modifier 'meta)
(define-key global-map "\C-cg" 'find-grep)
(define-key global-map "\C-cf" 'find-dired)

(defvar gud-pdb-marker-regexp "^> \\(.*\\)(\\([0-9]+\\))\\([a-zA-Z0-9_<>]*\\|\\?\\)()\\(->[^\n]*\\)?\n")
(define-key global-map "\C-cp" 'pdb)
(global-set-key "\M-g" 'goto-line)

;;
;; Python mode files.  Compiled with Meta-x byte-compile-file (to elc files)
;; Copied into /usr/share/emacs/site-lisp 
;;

(require 'python-mode)
;; (require 'pycomplete-mode)  ;; compile failed
(require 'doctest-mode)

;;
;; Python & PDB Customization
;;
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode)
                                      interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)
;;(require 'pdbtrack) 
;; Color and Fonts. 
(require 'font-lock)
(setq font-lock-mode-maximum-decoration t)

;; turn on colorization. 
(if (fboundp 'global-font-lock-mode) (global-font-lock-mode t))

;;
;; Electric buffer C-c b
;;
(global-set-key (kbd "C-c b") 'electric-buffer-list)
