
# 
##
# Your previous /Users/john/.bash_profile file was backed up as /Users/john/.bash_profile.macports-saved_2016-01-04_at_00:22:49
##

# ZSH

autoload -U compinit promptinit
promptinit
compinit

zstyle ':completion:*' insert-tab false
# zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# MacPorts Installer addition on 2016-01-04_at_00:22:49: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# prompt
# export PS1="\u@\h \w>"
# export PROMPT="%n@%m %~>"
export PROMPT="%n@%M %~>"

# JAVA
# export JAVA_HOME=$(/usr/libexec/java_home)
# export PATH=${JAVA_HOME}/bin:$PATH
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
# jenv global 1.8.0.92

