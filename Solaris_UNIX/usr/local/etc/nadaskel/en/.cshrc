#
# $Header: /afs/.nada.kth.se/common/usr/local/etc/nadaskel/en/RCS/.cshrc,v 1.4 2011/03/23 15:24:57 ragge Exp $
#
#  Initializations for csh
#
#  If you want to know more, read the file README in your home directory.
#
#  (.cshrc 2.0)

# Make no core-dump when a program crashes.
# (with "unlimited" instead of 0 you will get core-dumps)
limit coredumpsize 0

# Do "unset" instead of "set" to get the reversed effect.
set ignoreeof		# ignore C-d to the shell (instead of dying)
set noclobber		# don't make redirect overwrite existing files
set notify		# show immediately when background jobs are done
set recexact		# recognize exact substrings during completion
set rmstar		# ask before removing all files (with *)

## Environment setup - only do this if it has not already been done
if (! $?USER_ENV_INIT_DONE ) then
    ## Use nano as text mode editor and gedit as gui editor
    setenv EDITOR nano
    setenv VISUAL gedit

    # setenv PRINTER <printer-name>

    setenv USER_ENV_INIT_DONE True
endif

