
;;
;; This is my original Emacs config from the Digital UNIX kth.se AFS cell
;;
;; /afs/kth.se/home/e97/e97_jog/Public/.emacs, Feb 5 2001, 03:38:57
;;

;;(setq debug-on-error t) ;; använd inte denna, ger fula debug-meddelanden
;*                    -*- emacs-lisp -*-
;:*========================================================
;:*                 START EMACS SETTINGS
;:*========================================================
;:*
;:*
;:*=======================
;:* Define a variable to indicate whether we're running XEmacs/Lucid Emacs.
;: (You do not have to defvar a global variable before using it --
;: you can just call `setq' directly like we do for `emacs-major-version'
;: below.  It's clearer this way, though.)
;; XEmacs is defunct
(defvar running-xemacs nil)
;:*======================
;:* This is where it all starts...
(cond (running-xemacs

;;
;; XEmacs is defunct
;;

;:*=====================================================================
;:*====================== Johns grejor, för XEmacs =====================
;:*=====================================================================

; (setq load-path (cons (expand-file-name "~/emacs/") load-path))

;:*======================== S L U T ====================================

))

(cond ((not running-xemacs)

;:*=====================================================================
;:*===================== Johns grejor, för FSF Emacs ===================
;:*=====================================================================

;; prevent silly initial splash screen
(setq inhibit-splash-screen t)

(cond ((window-system)
;;

;; My theme
;(set-foreground-color "white")
;;(set-background-color "black")
;(set-background-color "#3f3f3f")
;;(set-border-color "black")
;(set-border-color "#3f3f3f")
;;(set-face-background 'fringe "black")
;(set-face-background 'fringe "#3f3f3f")

;; Zenburn theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)
(set-face-background 'fringe "#3f3f3f")

;; Disable menubar
; (menu-bar-mode -1) 

;; Disable toolbar
; (tool-bar-mode -1)

;; turn off toolbar
(tool-bar-mode -1)

;; tabs, tabs, tabs
(global-tab-line-mode t)
(tab-line-mode 1)

(setq tab-line-new-button-show nil)
;; (setq tab-line-close-button-show nil)

(set-face-attribute 'tab-line nil ;; background behind tabs
      :background "#252525"
      :foreground "#252525" :distant-foreground "#252525"
      :family "Menlo" :height 1.0 :box nil)
(set-face-attribute 'tab-line-tab nil ;; active tab in another window
      :inherit 'tab-line
      :foreground "#88887f" :background "#3f3f3f" :box nil)
(set-face-attribute 'tab-line-tab-current nil ;; active tab in current window
      :background "#3f3f3f" :foreground "#dcdcca" :box nil)
(set-face-attribute 'tab-line-tab-inactive nil ;; inactive tab
      :background "#353535" :foreground "#88887f" :box nil)
(set-face-attribute 'tab-line-highlight nil ;; mouseover
      :background "white" :foreground 'unspecified)

;; Scrollbars on Mac
(set-frame-parameter nil 'ns-appearance 'dark)
(set-frame-parameter nil 'ns-transparent-titlebar nil)

;; Tabbar
;(require 'tabbar)
;(tabbar-mode t)
;(setq tab-bar-mode t)
;(setq tab-bar-show nil)
;(setq global-tab-line-mode t)

;(global-tab-line-mode t)
;;(tab-line-mode)
;;(tab-line-mode--turn-on)
;(tab-line-mode 1)

;; 
;; Making Emacs tabs work like in Atom
;; https://andreyorst.gitlab.io/posts/2020-05-07-making-emacs-tabs-work-like-in-atom/
;; 
(defun tab-line-close-tab (&optional e)
  "Close the selected tab.
If tab is presented in another window, close the tab by using `bury-buffer` function.
If tab is uniq to all existing windows, kill the buffer with `kill-buffer` function.
Lastly, if no tabs left in the window, it is deleted with `delete-window` function."
  (interactive "e")
  (let* ((posnp (event-start e))
         (window (posn-window posnp))
         (buffer (get-pos-property 1 'tab (car (posn-string posnp)))))
    (with-selected-window window
      (let ((tab-list (tab-line-tabs-window-buffers))
            (buffer-list (flatten-list
                          (seq-reduce (lambda (list window)
                                        (select-window window t)
                                        (cons (tab-line-tabs-window-buffers) list))
                                      (window-list) nil))))
        (select-window window)
        (if (> (seq-count (lambda (b) (eq b buffer)) buffer-list) 1)
            (progn
              (if (eq buffer (current-buffer))
                  (bury-buffer)
                (set-window-prev-buffers window (assq-delete-all buffer (window-prev-buffers)))
                (set-window-next-buffers window (delq buffer (window-next-buffers))))
              (unless (cdr tab-list)
                (ignore-errors (delete-window window))))
          (and (kill-buffer buffer)
               (unless (cdr tab-list)
                 (ignore-errors (delete-window window)))))))
    (force-mode-line-update)))

;;
(setq default-directory "~/")
(setq command-line-default-directory "~/")

;;
))

(cond ((not window-system)
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

;; CUA Mode, this lets me paste into the search bar
; (define-key isearch-mode-map "\C-v" 'isearch-yank-kill)
; (define-key isearch-mode-map "\C-x" 'isearch-yank-pop)
(define-key isearch-mode-map (kbd "s-v") 'isearch-yank-kill)

(load-file "~/emacs/FSF-emacs")

;:*======================== S L U T ====================================

))

;:*
;:* That's all folks :-)       
;:*
;:*===================================================================
;:*  Controlling editing this file
;:*===================================================================
;Local Variables:
;mode:Emacs-Lisp
;outline-regexp: ";:\\*\\**"
;eval:(outl-mouse-minor-mode 0)
;eval:(hide-body)
;End:
;:*===================================================================
;:*
;:* $Id: .emacs,v 1.3 1999/06/06 18:40:47 robin Exp robin $ "Siegburg"
;:*
;:*===================================================================
;:* INSTRUCTIONS
;:* This file starts in outl-mouse-minor-mode.
;:* To edit this file, use C-c C-o C-s to show a topic;
;:* use C-c C-o C-d to hide it again.
;:* These keybindings are for Gnu Emacs 19.23.
;:* In 19.34, that would be C-c @ C-s and C-c @ C-d instead.
;:* ===================================================================
;:* COPYRIGHT
;:* Copyright Robin S. Socha (1998) <robin@socha.net>
;:* ===================================================================
;:*
;:*
;:* This code is free software; you can redistribute it and/or modify
;:* it under the terms of the GNU General Public License as published by
;:* the Free Software Foundation; either version 2 of the License, or
;:* (at your option) any later version.
;:*
;:* This code is distributed in the hope that it will be useful,
;:* but WITHOUT ANY WARRANTY; without even the implied warranty of
;:* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;:* GNU General Public License for more details.
;:*
;:* You should have received a copy of the GNU General Public License
;:* along with Emacs (which is required to make this stuff work); if
;:* not, write to the Free Software Foundation, Inc., 675 Mass Ave,
;:* Cambridge, MA 02139, USA.
;:*
;:*=======================================================
;:*
;:* Layout stolen from Erik Selberg's GNUS hacks... (gnus-load.el)
;:* Method of loading user files stolen from René Scholz.
;:* Kudos to Markus Dickebohm for getting me started and running.
;:*
;:* CAVEATS
;:* This thing will not run out of the box. Duuuhh...
;:* I'm using a couple of packages that will not be on your system.
;:* Some things are done in a Rambo kinda way - I'm *not* a programmer
;:* and I don't know anything about lisp, you know }:-> So don't
;:* expect anything fancy in here... This is just another .emacs that
;:* might only be of interest for someone who's doing a little LaTeX
;:* and mail/news. So - enjoy...
;:*
