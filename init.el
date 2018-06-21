;;; emacs setup for Wei Xu


;;; Note use 'C-x C-e' (eval-last-sexp) to evaluate the Emacs Lisp expression before point

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'google-c-style)

(global-set-key (kbd "M-s") 'shell)
(global-set-key (kbd "C-q") 'compile)
