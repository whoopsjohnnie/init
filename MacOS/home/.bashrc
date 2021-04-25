
# 
##
# Your previous /Users/john/.bash_profile file was backed up as /Users/john/.bash_profile.macports-saved_2016-01-04_at_00:22:49
##

# MacPorts Installer addition on 2016-01-04_at_00:22:49: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# prompt
export PS1="\u@\h \w>"

# JAVA
# export JAVA_HOME=$(/usr/libexec/java_home)
# export PATH=${JAVA_HOME}/bin:$PATH
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# jenv global 1.8.0.92

# Python path, set $PATH before so system python is default to not screw with system and installers
export PATH="$PATH:~/Library/Python/2.7/bin/:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/"

# GO
# export GOPATH=/usr/local/go
export PATH="$PATH:/usr/local/go/bin"
export GOPATH=$HOME/go

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/john/Documents/development/serverless/node_modules/tabtab/.completions/slss.bash
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
