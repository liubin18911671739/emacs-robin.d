(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

(defconst demo-packages
  '(anzu
    company
    duplicate-thing
    ggtags
    helm
    helm-gtags
    helm-projectile
    helm-swoop
    ;; function-args
    clean-aindent-mode
    comment-dwim-2
    dtrt-indent
    ws-butler
    iedit
    yasnippet
    smartparens
    projectile
    volatile-highlights
    undo-tree
    zygospore))

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package demo-packages)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)

;; this variables must be set before load helm-gtags
;; you can change to any prefix key of your choice
(setq helm-gtags-prefix-key "\C-cg")

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-helm)
(require 'setup-helm-gtags)
(require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)

(windmove-default-keybindings)

;; function-args
;; (require 'function-args)
;; (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)

;; company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(delete 'company-semantic company-backends)
(define-key c-mode-map  [(tab)] 'company-complete)
(define-key c++-mode-map  [(tab)] 'company-complete)
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)

;; company-c-headers
(add-to-list 'company-backends 'company-c-headers)

;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;; Available C style:
;; “gnu”: The default style for GNU projects
;; “k&r”: What Kernighan and Ritchie, the authors of C used in their book
;; “bsd”: What BSD developers use, aka “Allman style” after Eric Allman.
;; “whitesmith”: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; “stroustrup”: What Stroustrup, the author of C++ used in his book
;; “ellemtel”: Popular C++ coding standards as defined by “Programming in C++, Rules and Recommendations,” Erik Nyquist and Mats Henricson, Ellemtel
;; “linux”: What the Linux developers use for kernel development
;; “python”: What Python developers use for extension modules
;; “java”: The default style for java-mode (see below)
;; “user”: When you want to define your own style
(setq
 c-default-style "linux" ;; set style to "linux"
 )

(global-set-key (kbd "RET") 'newline-and-indent)  ; automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

;; Compilation
(global-set-key (kbd "<f8>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))

;; setup GDB
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t

 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )

;; Package: clean-aindent-mode
(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

;; Package: dtrt-indent
(require 'dtrt-indent)
(dtrt-indent-mode 1)

;; Package: ws-butler
(require 'ws-butler)
(add-hook 'prog-mode-hook 'ws-butler-mode)

;; Package: yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Package: smartparens
(require 'smartparens-config)
(setq sp-base-key-bindings 'paredit)
(setq sp-autoskip-closing-pair 'always)
(setq sp-hybrid-kill-entire-symbol nil)
(sp-use-paredit-bindings)

(show-smartparens-global-mode +1)
(smartparens-global-mode 1)

;; Package: projejctile
(require 'projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)

(require 'helm-projectile)
(helm-projectile-on)
(setq projectile-completion-system 'helm)
(setq projectile-indexing-method 'alien)

;; Package zygospore
(global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows)

;;; package --- Summary
;;; Commentary:

;;(tool-bar-mode 0)
;;(menu-bar-mode 1)
;;(scroll-bar-mode t)
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)
(setq initial-scratch-message "")
(line-number-mode t)
(global-linum-mode t)
(xterm-mouse-mode t)

(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")
;;(set-locale-environment "UTF-8")
;;(set-language-environment 'Chinese-GB)
(set-default-font "Dejavu Mono 16")

;;
                                        ; ---------------------
(prefer-coding-system 'utf-8)
;;(prefer-coding-system 'gb18030)
(prefer-coding-system 'gbk)
(prefer-coding-system 'gb2312)
(prefer-coding-system 'utf-16)
(prefer-coding-system 'utf-8)
;;; ---------------------

(add-to-list 'load-path "~/.emacs.d/slime/")
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(require 'slime)
(slime-setup '(slime-fancy))


(package-initialize)

;;(elpy-enable)

;(require 'auto-complete)
;(global-auto-complete-mode t)

(require 'flycheck)
(global-flycheck-mode t)

;;(yas-global-mode 1)

;; ;; Function keys

;;(global-set-key [f8] 'compile)

(global-set-key [f9] 'shell)

(global-set-key [f10] 'run-python)

(global-set-key [f11] 'R)

(global-set-key [f12] 'slime)

(global-set-key [f7] 'menu-bar-open)

(global-set-key [f1] 'dired)

(global-set-key [f2] 'kill-buffer)

(global-set-key [f5] 'package-install)

(global-set-key [f6] 'package-list-packages)

(global-set-key [f4] 'eval-buffer)

(require 'sr-speedbar)

(require 'markdown-mode)

(require 'php-mode)

(add-to-list 'load-path "~/.emacs.d/2ESS/lisp/")
(load "ess-site")

(speedbar-add-supported-extension ".R")

(sr-speedbar-handle-auto-refresh t)

(setq dframe-update-speed t)
(global-set-key (kbd "<f3>") (lambda()
                               (interactive) (sr-speedbar-toggle)))


;; add java supports

(add-to-list 'auto-mode-alist '("\\.java\\'" . java-mode))


;; Emacs 24.4
;; ((boundp 'python-shell-interpreter-interactive-arg)
;;  (setq python-shell-interpreter ipython
;;        python-shell-interpreter-args "-i")

(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args "--pylab"
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

;; Python补全
(add-hook 'python-mode-hook 'jedi:setup)
