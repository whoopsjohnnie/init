
# 
##
# Your previous /Users/john/.bash_profile file was backed up as /Users/john/.bash_profile.macports-saved_2016-01-04_at_00:22:49
##

# 
# emulate sh -c 'source /etc/profile'

# 
autoload -U compinit promptinit
promptinit
compinit

# 
zstyle ':completion:*' insert-tab false
# zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# LSCOLORS
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Aliases
# alias h='history 1'
alias history='history 1'
alias ll='ls -lG'
alias la='ls -aG'
alias ls='ls -G'

# Path
# MacPorts Installer addition on 2016-01-04_at_00:22:49: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Local bin
export PATH="$HOME/bin/:$PATH"

# prompt
# export PS1="\u@\h \w>"
# export PROMPT="%n@%m %~>"
export PROMPT="%n@%M %~>"

# Env
export EDITOR="vim"
#export PAGER="less"

# JAVA
# export JAVA_HOME=$(/usr/libexec/java_home)
# export PATH=${JAVA_HOME}/bin:$PATH
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
# jenv global 1.8.0.92

# Python path, set $PATH before so system python is default to not screw with system and installers
# export PATH="$PATH:~/Library/Python/2.7/bin/:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/"

# GO
# # export GOPATH=/usr/local/go
# export PATH="$PATH:/usr/local/go/bin"
# export GOPATH=$HOME/go

# NPM
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Yarn
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
# [ -f /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
# [ -f /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
# [ -f /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/slss.bash

# The next line updates PATH for the Google Cloud SDK.                                                                                                                                            
# if [ -f '/Users/john/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/john/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.                                                                                                                                      
# if [ -f '/Users/john/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/john/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# 
# ssh agent
#
mkdir -p ~/.tmp
 
check-ssh-agent() {
    [ -S "$SSH_AUTH_SOCK" ] && { ssh-add -l >& /dev/null || [ $? -ne 2 ]; }
}

# attempt to connect to a running agent
check-ssh-agent || export SSH_AUTH_SOCK="$(< ~/.tmp/ssh-agent.env)"
# if agent.env data is invalid, start a new one
check-ssh-agent || {
    eval "$(ssh-agent -s)" > /dev/null
    echo "$SSH_AUTH_SOCK" > ~/.tmp/ssh-agent.env
}

# 
# ssh agent
# https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# 
# killall ssh-agent
# eval "$(ssh-agent -s)"

# 
# ssh keys
# 
ssh-add ~/.ssh/john_github

