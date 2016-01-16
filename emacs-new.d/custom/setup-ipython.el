
;; Emacs 24.4

(setq
 python-shell-interpreter "ipython"
<<<<<<< HEAD
 python-shell-interpreter-args ""
=======
 python-shell-interpreter-args "--pylab"
>>>>>>> 5544e96ed9bc9adea91a75c09064cc595ddfecda
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
<<<<<<< HEAD
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n"
)

;; Python补全
;;(add-hook 'python-mode-hook 'jedi:setup)
=======
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

;; Python补全
(add-hook 'python-mode-hook 'jedi:setup)
>>>>>>> 5544e96ed9bc9adea91a75c09064cc595ddfecda

(provide 'setup-ipython)
