;;; Uncomment the modules you'd like to use and restart Prelude afterwards

;; (require 'prelude-c)
;; (require 'prelude-clojure)
(require 'prelude-coffee)
;; (require 'prelude-common-lisp)
(require 'prelude-css)
(require 'prelude-emacs-lisp)
(require 'prelude-erc)
;; (require 'prelude-erlang)
;; (require 'prelude-elixir)
;; (require 'prelude-haskell)
(require 'prelude-js)
;; (require 'prelude-latex)
(require 'prelude-lisp)
;; (require 'prelude-mediawiki)
(require 'prelude-org)
;; (require 'prelude-perl)
(require 'prelude-python)
;; (require 'prelude-ruby)
;; (require 'prelude-scala)
;; (require 'prelude-scheme)
;; (require 'prelude-scss)
(require 'prelude-web)
(require 'prelude-xml)

(set-language-environment 'utf-8)

;; (require 'request)
(require 'evil)
(evil-mode 1)

(global-linum-mode 1)

(setq whitespace-line-column 160)

(yas-global-mode 1)

(global-auto-complete-mode 1)
(add-hook 'after-init-hook 'global-company-mode)

(ac-config-default)
(setq ac-use-quick-help nil)
(setq ac-auto-start 3) ;; 输入4个字符才开始补全
(global-set-key "\M-/" 'auto-complete)  ;; 补全的快捷键，用于需要提前补全
;; Show menu 0.8 second later
;; (setq ac-auto-show-menu 0.8)
;; 选择菜单项的快捷键
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)
;; menu设置为12 lines
(setq ac-menu-height 12)

  (setq indent-tabs-mode nil)
  (setq tab-width 4)

  (global-set-key (kbd "S-TAB") 'indent-for-tab-command)

  (global-set-key (kbd "M-p") 'ace-window)
  (setq aw-dispatch-always t)

  ;; (define-key global-map (kbd "C-c p-h") 'helm-projectile)
  (define-key global-map (kbd "C-c g") 'helm-projectile-ag)
  ;; (global-unset-key (kbd "C-c C-p"))
  ;; (define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(global-set-key (kbd "C-c M-s") 'helm-swoop)
(global-set-key (kbd "C-c M-w") 'helm-multi-swoop-all)

(setq helm-split-window-default-side 'right)
(setq helm-swoop-split-direction 'split-window-horizontally)
