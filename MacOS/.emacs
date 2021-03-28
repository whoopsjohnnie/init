
;; Disable menubar
;(menu-bar-mode -1) 

;; Disable toolbar
; (tool-bar-mode -1)

;; turn off toolbar
(if window-system
    (tool-bar-mode -1))

;; CUA Mode, I cannot live without it
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; CUA Mode, this lets me paste into the search bar
; (define-key isearch-mode-map "\C-v" 'isearch-yank-kill)
; (define-key isearch-mode-map "\C-x" 'isearch-yank-pop)
(define-key isearch-mode-map (kbd "s-v") 'isearch-yank-kill)

;;
; (setq default-directory "~/")
; (setq command-line-default-directory "~/")
(if window-system
    (setq default-directory "~/"))

;;
; (eval-after-load "color-theme"
;   '(progn
;      (color-theme-initialize)
;      (color-theme-dusk)
;      (when (display-graphic-p)
;        ;; settings for GUI emacs
;        (add-to-list 'default-frame-alist '(background-color . "#282B35"))
;        (add-to-list 'default-frame-alist '(foreground-color . "White"))
;        (set-frame-font "Inconsolata 18" nil t))))
