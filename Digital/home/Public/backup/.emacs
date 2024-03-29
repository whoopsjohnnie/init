(setq debug-on-error t)
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
;:*====================== Johns grejor =================================
;:*=====================================================================

(setq load-path (cons (expand-file-name "~/emacs/") load-path))

;; Startup files for XEmacs 19.xx
(load-library "xemacs-general")
(load-library "xemacs-keys")
(load-library "xemacs-packages")
(load-library "xemacs-mail")
(load-library "xemacs-c")
(load-library "xemacs-latex")
(load-library "xemacs-idl")

;:*======================== S L U T ====================================

;:*
;:*===================================================================== 
;:*========                 P A T H S                           ========       
;:*===================================================================== 
;:*       (USER-load-file "paths.el")

;:*
;:*===================================================================== 
;:*========            E N D    P A T H S                       ========       


;:*===================================================================== 
;:*
;:*
;:*===================================================================== 
;:*========                 V A R I A B L E S                   ========       
;:*===================================================================== 
;:*       (USER-load-file "variables.el")

;:*
;:*===================================================================== 
;:*========            E N D   V A R I A B L E S                ========       
;:*===================================================================== 
;:*
;:*
;:*===================================================================== 
;:*========                         K E Y S                     ========       
;:*===================================================================== 
;:*(USER-load-file "keys.el")

;:*
;:*===================================================================== 
;:*========                      E N D  K E Y S                 ========       
;:*===================================================================== 
;:*
;:*
;:*===================================================================== 
;:*========                     P A C K A G E S                 ========       
;:*===================================================================== 
;:*       (USER-load-file "packages.el")

;:*
;:*===================================================================== 
;:*========               E N D   P A C K A G E S               ========       
;:*===================================================================== 
;:*
;:*
;:*===================================================================== 
;:*========               M I S C   S T U F F                   ========       
;:*===================================================================== 
;:*       (USER-load-file "misc.el")

;:*
;:*===================================================================== 
;:*========             E N D  M I S C   S T U F F              ========       
;:*===================================================================== 
;:*
;:*

;:*===================================================================== 
;:*========           C and J A V A   S E T T I N G S           ========       
;:*===================================================================== 
;:*(USER-load-file "c-and-java.el")

;:*
;:*===================================================================== 
;:*========      E N D   C and J A V A   S E T T I N G S        ========       
;:*===================================================================== 
;:*
;:*

;:*===================================================================== 
;:*========             P E R L   S E T T I N G S               ========       
;:*===================================================================== 
;:* (USER-load-file "perl.el")

;:*
;:*===================================================================== 
;:*========            E N D   P E R L   S E T T I N G S        ========       
;:*===================================================================== 
;:*
;:*


;:*=====================================================================
;:*============            W3     S E T T I N G S            =========== 
;:*=====================================================================
;:*       (USER-load-file "w3-rss.el")

;:*
;:*=====================================================================
;:*============        E N D  W3  S E T T I N G S            =========== 
;:*=====================================================================
;:*
;:*
;:*=====================================================================
;:*============      L a T e X    S E T T I N G S            =========== 
;:*=====================================================================
;:*       (USER-load-file "latex-rss.el")
;:*
;:*=====================================================================
;:*========          E N D   LaTeX   S E T T I  N G S        ===========
;:*=====================================================================
;:*
;:*
;:*===================================================================== 
;:*========               H M - - H T M L    M O D E         ===========
;:*===================================================================== 
;:*       (USER-load-file "html-rss.el")
;:*
;:*===================================================================== 
;:*========           E N D   H M - - H T M L    M O D E        ========
;:*===================================================================== 
;:*
;:*
;:*===================================================================== 
;:*========            B B D B   S U P P O R T                  ========       
;:*===================================================================== 
;:*       (USER-load-file "bbdb-rss.el")
;:*
;:*===================================================================== 
;:*========          E N D   B B D B   S U P P O R T            ========       
;:*===================================================================== 
;:*
;:*
;:*======================================================================
;:*============   N E W S   A N D   M A I L    S E T T I N G S  =========
;:*======================================================================
;:*       (USER-load-file "mailnews.el")
;:*
;:*======================================================================
;:*======== E N D   N E W S   A N D   M A I L    S E T T I N G S  =======
;:*======================================================================
;:*
;:*
;:*======================================================================
;:*========          Calendar and Diary settings                  =======
;:*======================================================================
;:*       (USER-load-file "calendar-rss.el")
;:*
;:*======================================================================
;:*========       End Calendar and Diary settings                 =======
;:*======================================================================
;:*
;:*===================================================================== 
;:*========            F A C E S   A N D   C O L O R S          ========       
;:*===================================================================== 
;:*       (USER-load-file "fonts-rss.el")
;:*
;:*===================================================================== 
;:*========     E N D   F A C E S   A N D   C O L O R S         ========       
;:*===================================================================== 
;:*
;:*
;:*===================================================================== 
;:*                       USER DEFINED MACROS
;:*===================================================================== 
;:*       (USER-load-file "macros-rss.el")
;:*
;:*===================================================================== 
;:*                       END USER DEFINED MACROS
;:*=====================================================================
;:*
;:*
;:*=====================================================================
;:*                       BEGIN SOUND SETTINGS
;:*=====================================================================
;:*       (USER-load-file "sounds-rss.el")
;:*
;:*=====================================================================
;:*                   END SOUND SETTINGS
;:*=====================================================================
;:*
;:*
;:*=========================== T H E   E N D ===========================
;:*
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
       (load-file "~/.EMACS")
       
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
;:* Method of loading user files stolen from Ren� Scholz.
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

