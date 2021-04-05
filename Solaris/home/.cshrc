#
# $Header: /afs/.nada.kth.se/usr/local/etc/nadaskel/srcfiles/sv/RCS/.cshrc,v 1.2 1997/08/07 10:22:49 fjo Exp $
#
#  Initieringsfil till csh
#
#  Vill du veta mer om denna fil, l�s i filen README i din hemkatalog.
#
#  (.cshrc 2.0)

# Producera ingen "core"-fil n�r ett program kraschar
# (skriv "unlimited" ist�llet f�r 0 om du vill ha "core-dumpar")
limit coredumpsize 0
limit cputime unlimited

# Skriv "unset" ist�llet f�r "set" i dessa f�r att f� motsatt effekt 
set ignoreeof		# ignorera C-d till skalet (ist�llet f�r att d�)
set noclobber		# skriv inte �ver existerande filer i skalet
set notify		# tala om omedelbart n�r backgrunds-jobb �r klara
set recexact		# k�nn igen exakta substr�ngar vid komplettering
set rmstar		# fr�ga n�r man f�rs�ker ta bort alla filer (med *)

alias emacs 'emacs-20.7'

