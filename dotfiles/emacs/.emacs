
;;
;; This is a version of my original Emacs config files from the Digital UNIX kth.se AFS cell.
;; Originally I had a simple .emacs for the GNU or FSF version of Emacs, this file was set up
;; in 1997 or 1998. In 2001 I refactored this to support XEmacs as well, as XEmacs was my fav
;; Emacs at the time, probably due to its stronger X support. The original .emacs was renamed
;; to ~/emacs/FSF-emacs (this was before ~/.emacs.d/ was a thing), and a new .emacs was put
;; in place that handled the different flavors of Emacs. The new .emacs would load
;; ~/emacs/FSF-emacs at the end of the GNU Emacs config section.
;;
;; Fast forward to modern times. XEmacs is defunct, and GNU Emacs has full X GUI support with
;; menus etc. For this reason I am removing the multi file config and reverting .emacs to be
;; the original FSF-emacs with all my MacOS X additions like tabs and CUA Mode at the end.
;;
;; /afs/kth.se/home/e97/e97_jog/Public/.emacs, Feb 5 2001, 03:38:57
;; /afs/kth.se/home/e97/e97_jog/Public/emacs/FSF-emacs, Feb 5 2001, 03:40:44
;;
;; John Grundback, Los Angeles, January 16 2022
;;

;;Goto line
(global-set-key (quote [f12]) (quote goto-line))

;;Rad/kolumnnummer
(setq line-number-mode 't)
(setq column-number-mode 't)

;;Klocka

(setq display-time-24hr-format t)
(setq calendar-week-start-day 1)
(display-time)

;;Automatisk radmatning sist
(setq require-final-newline 'ask)

;;Markera sökträffar
(setq search-highlight t)
(setq query-replace-highlight t)

;;Färgläggning av text
(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode t))

;;Maximalt antal färger
(setq font-lock-maximum-decoration t)

(add-hook 'c-mode-hook 'turn-on-font-lock)
(add-hook 'c++-mode-hook 'turn-on-font-lock)
(add-hook 'emacs-lisp-mode-hook 'turn-on-font-lock)
(add-hook 'tex-mode-hook 'turn-on-font-lock)
(add-hook 'latex-mode-hook 'turn-on-font-lock)
(add-hook 'perl-mode-hook 'turn-on-font-lock)
(add-hook 'scheme-mode-hook 'turn-on-font-lock)
(add-hook 'java-mode-hook 'turn-on-font-lock)
(add-hook 'lisp-mode-hook 'turn-on-font-lock)
(add-hook 'makefile-mode-hook 'turn-on-font-lock)
(add-hook 'nroff-mode-hook 'turn-on-font-lock)
(add-hook 'pascal-mode-hook 'turn-on-font-lock)
(add-hook 'sgml-mode-hook 'turn-on-font-lock)
(add-hook 'sh-mode-hook 'turn-on-font-lock)
(add-hook 'tcl-mode-hook 'turn-on-font-lock)
(add-hook 'texinfo-mode-hook 'turn-on-font-lock)

;;Visa markering
(transient-mark-mode t)

;;Matcha paranteser
(require 'paren)
(show-paren-mode 't)
(setq show-paren-style 'parenthesis)

(setq blink-matching-paren-distance nil)

;;Bryt rader
(setq truncate-lines t)
(setq scroll-step 1)
;(auto-show-mode t)

;;JAVA
;(require 'jde)

;;TeX
;(require 'tex-site)

;;Rullningslist till höger
(custom-set-variables
 '(paren-mode (quote paren) nil (paren)))

;;Okända filer öppnas i textläge
(setq default-major-mode 'text-mode)

(setq scroll-step 1)

;; Moving this to the end
;; (message ".emacs loaded")
(custom-set-faces)

;;
;; Here follows my MacOS X additions like tabs and CUA Mode.
;;
;;
;;

;; prevent silly initial splash screen
(setq inhibit-splash-screen t)

(cond ((window-system)
;; (cond ((display-graphic-p)
;;

; (load-theme 'leuven)
; (load-theme 'tango)

;; My theme
;; (set-background-color "white")
;; (set-border-color "white")
;(set-face-background 'fringe "white")
(set-face-attribute 'fringe nil :background nil)
;(set-fringe-mode 0) 

;; Disable menubar
; (menu-bar-mode -1) 

;; Disable toolbar
; (tool-bar-mode -1)

;; turn off toolbar
; (tool-bar-mode -1)

;;
(setq default-directory "~/")
(setq command-line-default-directory "~/")

;;
))

(cond ((not window-system)
;; (cond ((not display-graphic-p)
;;

;;
;(setq default-directory "~/")
;(setq command-line-default-directory "~/")

;;
))

;; dired mode, click opens subfolder in same frame
(eval-after-load "dired" '(progn
    (define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)))

;; CUA Mode, I cannot live without it
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;
; (setq cua-prefix-override-inhibit-delay nil)

;; CUA Mode, this lets me paste into the search bar
; (define-key isearch-mode-map "\C-v" 'isearch-yank-kill)
; (define-key isearch-mode-map "\C-x" 'isearch-yank-pop)
(define-key isearch-mode-map (kbd "s-v") 'isearch-yank-kill)

;;
(global-set-key (kbd "A-x") (kbd "C-x"))

;; Ctrl-a should mark whole buffer
(global-set-key (kbd "C-a") 'mark-whole-buffer)

;; Cmd-g should quit
; (global-set-key (kbd "s-g") 'keyboard-quit)
; (global-set-key (kbd "s-g") 'keyboard-quit-escape)
(global-set-key (kbd "s-g") (kbd "C-g"))

;; Option1
(setq mac-command-modifier 'control)
(setq mac-option-modifier 'meta)

;; Option2
; (setq mac-command-modifier 'super)
; (setq mac-option-modifier 'meta)

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Evil CUA
(define-key evil-insert-state-map (kbd "C-c") 'cua-copy-region)
(define-key evil-insert-state-map (kbd "C-v") 'cua-paste)
(define-key evil-insert-state-map (kbd "C-x") 'cua-cut-region)
(define-key evil-insert-state-map (kbd "C-z") 'undo-tree-undo)
(define-key evil-insert-state-map (kbd "C-y") 'undo-tree-redo)
(define-key evil-insert-state-map (kbd "C-a") 'mark-whole-buffer)

;; Markdown/MD
(add-to-list 'load-path "~/.emacs.d/lisp/")

(custom-set-variables
 '(markdown-command "/opt/local/bin/pandoc "))

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;;
;; This is how .emacs would load ~/emacs/FSF-emacs at the end of the GNU Emacs config section.
;;
;; (load-file "~/emacs/FSF-emacs")
;;

(message ".emacs loaded")
