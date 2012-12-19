# env
export LANG=ja_JP.UTF-8

PATH=~/bin:/usr/local/bin:/usr/local/sbin:/Developer/Tools:/opt/local/bin:/opt/local/sbin:$PATH
export PATH

PROMPT="%/%% "
PROMPT2="%_%% "

HISTFILE=~/.zsh_history
HISTSIZE=600000
SAVEHIST=65535

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -G"
alias gls="gls --color"

# zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
zstyle ':completion:*' accept-exact '*(N)'

# options
#setopt hist_ignore_dups     # ignore duplication command history list
#setopt share_history        # share command history data
#setopt auto_pushd
#setopt correct
#setopt list_packed
#setopt nolistbeep

autoload -U compinit
compinit

#autoload predict-on
#predict-on

bindkey -e

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

unset SSH_AUTH_SOCK

. ~/.zsh.d/rb_optparse.zsh
fpath=(~/.zsh.d/Completion $fpath)
