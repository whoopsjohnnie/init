#!/usr/local/bin/tcsh

# Ladda .environment
source ~/.environment

# Ladda Xdefaults
xrdb -load ~/.Xdefaults

# Exekvera .starup.X
source $HOME/.startup.X

# Starta en console
xconsole -iconic &

# Starta fönsterhanteraren
# DET ÄR FÖNSTERHANTERAREN SOM ÄR MASTER PROCESS NÄR DEN AVSLUTAS LOGGAS MAN UT!!!

if ( $?FVWM2WINDOWS ) then
echo "FVWM2WINDOWS is set, loading standard FVWM2" > /dev/console
exec fvwm2
endif

if ( $?WINDOW_MANAGER ) then
echo "WINDOW_MANAGER is set to $WINDOW_MANAGER" > /dev/console
$WINDOW_MANAGER >& /dev/console
endif
