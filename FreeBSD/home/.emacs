
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

;; set a nice retro font, ala Digital UNIX circa 1997 
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;; ;; '(default ((t (:family "Misc Fixed" :foundry "Misc" :slant normal :weight normal :height 98 :width normal)))))
;;  '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 98 :width normal)))))

;; prevent silly initial splash screen
(setq inhibit-splash-screen t)

; (load-theme 'leuven)
; (load-theme 'tango)
(load-theme 'adwaita)

;(set-foreground-color "white")
;(set-background-color "black")
;(set-border-color "black")
;(set-face-background 'fringe "black")

;; I want an invisible finge
(set-face-attribute 'fringe nil :background nil)

;; Disable menubar
; (menu-bar-mode -1) 

;; Disable toolbar
; (tool-bar-mode -1)

;; John: I am pretty sure emacs 19 did not have a tool bar
;; However XEmacs did, but this is the FSF Emacs clause
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

;
(global-set-key (kbd "C-a") 'mark-whole-buffer)

(setq mac-command-modifier 'control)
(setq mac-option-modifier 'meta)

(define-key key-translation-map (kbd "s-x s-f") (kbd "C-x C-f"))
(define-key key-translation-map (kbd "C-x s-f") (kbd "C-x C-f"))
(define-key key-translation-map (kbd "C-x <f3>") (kbd "C-x C-f"))

(define-key key-translation-map (kbd "s-x s-s") (kbd "C-x C-s"))
(define-key key-translation-map (kbd "C-x s-s") (kbd "C-x C-s"))

(define-key key-translation-map (kbd "s-x s-c") (kbd "C-x C-c"))
(define-key key-translation-map (kbd "C-x s-c") (kbd "C-x C-c"))

(define-key key-translation-map (kbd "s-k") (kbd "C-k"))
(define-key key-translation-map (kbd "s-g") (kbd "C-g"))

;; Markdown/MD
(add-to-list 'load-path "~/.emacs.d/lisp/")

;(custom-set-variables
;	'(markdown-command "/usr/local/bin/pandoc"))

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;;
; (setq default-directory "~/")
; (setq command-line-default-directory "~/")

(load-file "~/emacs/FSF-emacs")

;:*======================== S L U T ====================================

))

;:*
;:* That's all folks :-)       
;:*
;:*===================================================================
;:*  Controlling editing this file
;:*===================================================================
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(column-number-mode t)
;;  '(cua-mode t nil (cua-base))
;;  '(display-time-mode t)
;;  '(paren-mode (quote paren) nil (paren))
;;  '(show-paren-mode t)
;;  '(tool-bar-mode nil))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 98 :width normal)))))
;Local Variables:
;; mode:Emacs-Lisp
;; outline-regexp: ";:\\*\\**"
;; eval:(outl-mouse-minor-mode 0)
;; eval:(hide-body)
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
