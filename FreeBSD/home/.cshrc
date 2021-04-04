# $FreeBSD$
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#

set color
setenv CLICOLOR yes

setenv LS_COLORS	"di=01;36;40"
setenv LSCOLORS		"GxGxFxdxCxegedabagExEx"

alias h		history 25
alias j		jobs -l
# alias ls	ls-F
alias ls	ls --color=auto
alias la	ls -aF --color=auto
alias lf	ls -FA --color=auto
alias ll	ls -lAF --color=auto

alias emacs	emacs -nw
alias gcc	cc

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin)
# A righteous umask
# umask 22

# setenv	EDITOR	vi
setenv	EDITOR	vim
setenv	PAGER	less

if ($?prompt) then
	# An interactive shell -- set some stuff up
	# set prompt = "%N@%m:%~ %# "
	set prompt = "%N@%M %~>"
	set promptchars = "%#"

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif
