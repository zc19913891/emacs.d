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

;;添加ac补全源
(set-default 'ac-sources
             '(ac-source-semantic ;;ac使用semantic的分析结果
               ac-source-dictionary
               ac-source-yasnippet
               ac-source-abbrev
               ac-source-words-in-buffer
               ac-source-words-in-all-buffer
               ac-source-imenu
               ac-source-files-in-current-dir
               ac-source-filename))

;;yasnippet补全源的界面显示设置，这里颜色是红色的，用来与ac本身的补全相区分
(defface ac-yasnippet-candidate-face
  '((t (:background "sandybrown" :foreground "black")))
  "Face for yasnippet candidate.")

(defface ac-yasnippet-selection-face
  '((t (:background "coral3" :foreground "white")))
  "Face for the yasnippet selected candidate.")

(defvar ac-source-yasnippet
  '((candidates . ac-yasnippet-candidate)
    (action . yas/expand)
    (candidate-face . ac-yasnippet-candidate-face)
    (selection-face . ac-yasnippet-selection-face))
  "Source for Yasnippet.")
