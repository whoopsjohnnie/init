
#
# This is my original tcsh shell config from the Solaris UNIX nada.kth.se AFS cell
#
# /afs/nada.kth.se/home/e97/e97_jog/.cshrc, 9 Apr 22:41:04 2001
#

#
# $Header: /afs/.nada.kth.se/usr/local/etc/nadaskel/srcfiles/sv/RCS/.cshrc,v 1.2 1997/08/07 10:22:49 fjo Exp $
#
#  Initieringsfil till csh
#
#  Vill du veta mer om denna fil, läs i filen README i din hemkatalog.
#
#  (.cshrc 2.0)

# Producera ingen "core"-fil när ett program kraschar
# (skriv "unlimited" istället för 0 om du vill ha "core-dumpar")
limit coredumpsize 0
limit cputime unlimited

# Skriv "unset" istället för "set" i dessa för att få motsatt effekt 
set ignoreeof		# ignorera C-d till skalet (istället för att dö)
set noclobber		# skriv inte över existerande filer i skalet
set notify		# tala om omedelbart när backgrunds-jobb är klara
set recexact		# känn igen exakta substrängar vid komplettering
set rmstar		# fråga när man försöker ta bort alla filer (med *)

# alias emacs 'emacs-20.7'
alias emacs 'emacs-27.2 -nw'


