#
# Example .bashrc, initializations for bash
#

# Some useful functions
lf() { ls -F; }
ll() { ls -laF; }
lsd() { cd $@ ; ls -aF; }
h() { history | more; }

em() { if [ "$DISPLAY" ]; then eval "emacs $@ &"; else emacs $@; fi; }

# Variable settings
ignoreeof=yes
notify=yes