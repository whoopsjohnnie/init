;; Uncomment (ie. remove the ; first on the line) on lines you would
;; like to try, and comment those away (ie. put a ; in front of) that
;; you don't want.


;; Help messages and such.
;;
;; No silly startup-message
;    (setq inhibit-startup-message t)
;; When you have seen the message in the minibuffer about the
;; GNU project and are tired of it, uncomment the following
;; line and write you own login name instead of USER:
;    (setq inhibit-startup-echo-area-message "USER")
;; Don't like help every time I fail to give right command
;; Can type '?' to get it
;    (setq completion-auto-help nil)

;; Disabling/enabling of some confusing commands
;;
;; I know how to use the mini-buffer for emacslisp
;    (put 'eval-expression 'disabled nil)
;; Don't iconify my window every time I accidentally hit C-z
    (put 'iconify-or-deiconify-frame 'disabled t)

;; Dont crash if file not found
    (defun load-safe (file)
      (condition-case () (load file) (error)))

;; Some convenient things. 
;;
;; Don't add newlines at end of file when I go down
    (setq next-line-add-newlines ())
;; Use text mode instead of fundamental mode
    (setq default-major-mode 'text-mode)
;; Display the current time in the modeline
;    (display-time)
;    (setq display-time-24hr-format t)
;    (setq display-time-day-and-date t)
;; Display the current line number in the mode line
;    (line-number-mode t)
;; Scroll less than half a page at a time
;    (setq scroll-step 4)
;; Automatic scrolling horizontally (on long lines)
;    (load-safe "vh-scroll")
;    (setq hscroll-step 6)
;; Buffer history for commands reading buffer names (for example C-x b)
    (load-safe "better-readbuf")
;; Allow multiple minibuffer dialogues
;    (setq enable-recursive-minibuffers t)

;; Things that only work on in Gnu Emacs.
;;
(if (not (string-match "XEmacs" emacs-version))
    (progn
      ;;
      ;; Things for X-windows.
      (if window-system
	  (progn
	    ;; Dont crash if no bold version
	    (defun safe-make-face-bold (f)
	      (condition-case () (make-face-bold f) (error)))
	
	    ;; Make modeline bold
	    ; (safe-make-face-bold 'modeline)
	  
	    ;; Make region bold instead of underlined (on B/W screens)
	    (set-face-background 'region "gray")
	    (set-face-foreground 'region ())
	    (set-face-underline-p 'region ())
	    (safe-make-face-bold 'region)
	  
	    ;; I want highlighting of corresponding parentheses
	    (load-safe "paren")
	    ;; I want fancy colors everywhere (bold and underline on B/W)
	    (load-safe "hilit19")
	    (load-safe "hilit-fly")
	    (load-safe "hilit-pascal")
	    (load-safe "hilit-scheme")
	    (load-safe "hilit-simula")
	    ;; I want better buffer menus on C-mouse1 
	    (load-safe "msb")
	    
	    ;; In case no bold-italic exist, make it at least bold
	    (add-hook 'window-setup-hook
		      '(lambda () (safe-make-face-bold 'bold-italic)))
	    (add-hook 'after-make-frame-hook
		      '(lambda () (safe-make-face-bold 'bold-italic)))))

      (progn
	;; Show the region in another face
	;    (transient-mark-mode t)
	;; Let me use region even when not visible
        ;    (setq mark-even-if-inactive t)
	;; Tex mode customizations.
	;;
	;; Use AUCTeX instead of the default TeX-mode
	(load-safe "tex-site"))))

;; Pascal mode customizations
;;
;; Use these two lines for alternative indentation style
    (let ((pascal-indent-amount 2))
      (load-safe "pascal-custom"))
;; Let return indent the current and the next line.
;    (setq pascal-return t)
;; If t, put name of procedure at end. If 'all, put comments after all blocks.
;    (setq pascal-put-end-comment t) 
;; Make cursor blink at corresponding start of sentence, when you write ";".
;    (setq pascal-blink-sentence-start t)


;; If RMAIL is used, put RMAIL file in a read-protected directory
;    (setq rmail-file-name "~/Private/RMAIL")


;; Some useful key bindings 
    (define-key esc-map " " 'hippie-expand)
    (define-key ctl-x-map "g" 'goto-line)

