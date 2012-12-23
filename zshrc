export PYTHON_BIN=/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin/
export PATH=/opt/local/bin:/opt/local/sbin/:~/bin:/Developer/Tools:$PYTHON_BIN:$PATH
export PATH=~/Applications/android-sdk-macosx/platform-tools/:$PATH
export MANPATH=/opt/local/man:$MANPATH
export SSL_CERT_FILE=/opt/local/share/curl/curl-ca-bundle.crt

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -G"
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"
alias tmux="tmux -f ~/.zsh.d/tmux.conf"

bindkey -e

autoload -U compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=600000
SAVEHIST=65535

setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

PROMPT="%/%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

export LANG=ja_JP.UTF-8

zstyle ':completion:*' accept-exact '*(N)'

bindkey -e

. ~/.zsh.d/rb_optparse.zsh
fpath=(~/.zsh.d/Completion $fpath)

unset SSH_AUTH_SOCK

