;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;			Keyboard Customization			    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-key global-map '(control right)      'forward-word)
(define-key global-map '(control left)       'backward-word)
(define-key global-map '(control tab)        'other-window)
(define-key global-map '(meta right)         'scroll-left)
(define-key global-map '(meta left)          'scroll-right)
(define-key global-map '(shift prior)	     'beginning-of-buffer)
(define-key global-map '(shift next) 	     'end-of-buffer)
(define-key global-map '(control prior)	     'gse-unbury-buffer)
(define-key global-map '(control next) 	     'gse-bury-buffer)
(define-key global-map '(meta prior)	     'forward-sexp)
(define-key global-map '(meta next) 	     'backward-sexp)
(define-key global-map '(select)             'query-replace)
(define-key global-map '(shift select)       'goto-line)
(define-key global-map '(control select)     'fume-prompt-function-goto)
(define-key global-map '(shift delete)       'kill-entire-line)
(define-key global-map '(control delete)     'copy-entire-line)
(define-key global-map '(remove)             'kill-region)
(define-key global-map '(shift remove)       'copy-region-as-kill)
(define-key global-map '(apLineDel)          'kill-region)
(define-key global-map '(shift apLineDel)    'copy-region-as-kill)
(define-key global-map '(insert)             'yank)
(define-key global-map '(control insert)     'overwrite-mode)
(define-key global-map '(find)               'isearch-forward)
(define-key global-map '(shift find)         'isearch-backward)
(define-key global-map '(control find)       'isearch-repeat-forward)
(define-key global-map '(control shift find) 'isearch-repeat-backward)
(define-key global-map '(execute)            'execute-extended-command)
(define-key global-map '(shift execute)      'undo)
(define-key global-map '(control execute)    'repeat-complex-command)
(define-key global-map '(meta execute)       'eval-expression)
(define-key global-map '(menu)               'execute-extended-command)
(define-key global-map '(shift menu)         'undo)
(define-key global-map '(control menu)       'repeat-complex-command)
(define-key global-map '(meta menu)          'eval-expression)

(define-key global-map '(f1)                 'find-file)
(define-key global-map '(f2)                 'save-buffer)
(define-key global-map '(f4)                 'kill-buffer)
(define-key global-map '(f5)                 'write-file)
(define-key global-map '(f11)                'set-mark-command)
(define-key global-map '(f12)                'kill-region)
(define-key global-map '(f13)                'yank)
(define-key global-map '(f14)                'copy-region-as-kill)
(define-key global-map '(f17)                'fill-paragraph)
(define-key global-map '(f18)                'fill-region)

(define-key global-map '(button1)         'mouse-track)
(define-key global-map '(button2)         'x-set-point-and-insert-selection)
(define-key global-map '(button3)         'popup-mode-menu)
(define-key global-map '(meta button1)    'mouse-track-adjust)
(define-key global-map '(meta button2)    'x-insert-selection)
(define-key global-map '(shift button1)   'cw-build-buffers)
(define-key global-map '(shift button2)   'mouse-keep-one-window)
(define-key global-map '(shift button3)   'mouse-function-menu)
(define-key global-map '(control button1) 'kill-region)
(define-key global-map '(control button2) 'yank)
(define-key global-map '(control button3) 'copy-region-as-kill)
(define-key global-map '(control shift button1) 'copy-to-register)
(define-key global-map '(control shift button2) 'insert-register)
(define-key global-map '(control shift button3) 'view-register)

