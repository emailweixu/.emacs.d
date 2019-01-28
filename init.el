;;; emacs setup for Wei Xu


;;; Note use 'C-x C-e' (eval-last-sexp) to evaluate the Emacs Lisp expression before point

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'google-c-style)

;;; Setup code navigation, i.e. gtags installed by apt install global
;;; Usage: https://www.gnu.org/software/global/globaldoc_toc.html#Usage_0028Emacs_0029
(add-to-list 'load-path "/usr/share/emacs/site-lisp/global")
(autoload 'gtags-mode "gtags" "" t)

;;; Key bindings
;;; \e* gtags-pop-stack
;;; \e. gtags-find-tag
;;; Other key bindings in /usr/share/emacs/site-lisp/global/gtags.el
(setq gtags-mode-hook
  '(lambda ()
        (define-key gtags-mode-map "\er" 'gtags-find-rtag)
))
(add-hook 'c-mode-common-hook
      '(lambda ()
	 (gtags-mode 1)
	 ))

;;;;;;;;;;;;;;;;;;;;;;; end config for global ;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "M-s") 'shell)
(global-set-key (kbd "C-q") 'compile)
(add-hook 'c-mode-common-hook
	  (lambda()
	    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))
