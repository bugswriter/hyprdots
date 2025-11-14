autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$HOME/.local/share/zsh_history"
alias ls="ls --color=auto"
bindkey -e 
source $HOME/.config/shell/aliasrc
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

set -o allexport
source ~/.env
set +o allexport

if [ -z "$TMUX" ]; then
    (cat ~/.cache/wal/sequences &)
fi
[ -f ~/.cache/wal/colors.sh ] && source ~/.cache/wal/colors.sh
