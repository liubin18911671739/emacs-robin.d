;;; setup-basic 4 chinese --- r0b1n

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
<<<<<<< HEAD

;;(set-default-font "Dejavu Mono 16")
(set-default-font "SimHei 16")
=======
(set-default-font "Dejavu Mono 16")
>>>>>>> 5544e96ed9bc9adea91a75c09064cc595ddfecda

;;; ---------------------
(prefer-coding-system 'utf-8)
(prefer-coding-system 'gb18030)
(prefer-coding-system 'gbk)
(prefer-coding-system 'gb2312)
(prefer-coding-system 'utf-16)
(prefer-coding-system 'utf-8)
;;; ---------------------

(provide 'setup-basic)
