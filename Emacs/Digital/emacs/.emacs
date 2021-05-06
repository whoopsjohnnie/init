
;;
;; This is my original Emacs config file from the Digital UNIX kth.se AFS cell
;;
;; Timestamp: Feb 5 2001, 03:41:51
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
(defvar running-xemacs (string-match "XEmacs\\|Lucid" emacs-version))
;:*======================
;:* This is where it all starts...
(cond (running-xemacs
;:*======================
;:*
;:*======================
;:* Options Menu Settings for older XEmacsen       
(cond
        ((and (string-match "XEmacs" emacs-version)
              (boundp 'emacs-major-version)
              (or (and
                   (= emacs-major-version 19)
                   (>= emacs-minor-version 14))
                  (= emacs-major-version 20))
              (fboundp 'load-options-file))
         (load-options-file "~/.xemacs-options")))
;:* if called with -u username, use this username for (load-file):       
(setq USER "john")
(let ( (l command-line-args) )
         (while (not (null l))
           (if (string= (car l) "-u") (setq USER (cadr l))  )
           (setq l (cdr l))
           ))
(defun USER-load-file (f) (load-file (concat "~" USER "/.xemacs/" f)) )

;:*=====================================================================
;:*====================== Johns grejor, för XEmacs =====================
;:*=====================================================================

(setq load-path (cons (expand-file-name "~/emacs/") load-path))

;; Startup files for XEmacs 19.xx
(load-library "xemacs-general")
(load-library "xemacs-keys")
(load-library "xemacs-packages")
;;(load-library "xemacs-mail")
(load-library "xemacs-c")
(load-library "xemacs-latex")
;;(load-library "xemacs-idl")

;;(require 'scroll-in-place)
(require 'jde)
;;(require 'tex-site) ;; sätts i xemacs-latex

;;(setq scroll-in-place nil)

(setq scroll-step 1)

;:*======================== S L U T ====================================


;:* XEmacs ready for take-off!!!
;:*======================

(let* ((string "XEmacs ready for take-off!!!"))
  (string-match "XEmacs ready for take-off!!!" string)
  (put-text-property (match-beginning 0) (match-end 0) 'face 'bold string)
  (display-message 'message string)
(sit-for 2))

;:*
;:* I only use the latest versions of XEmacs, but if you have older,
;:* incompatible stuff, this is the right place to put it...
;:*======================

))

(cond ((not running-xemacs)  
       (load-file "~/emacs/FSF-emacs")
       
       )
      )

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

