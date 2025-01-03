# Created by newuser for 5.9


powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/firepanda/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# LS_COLORS=$LS_COLORS:'di=0;43:' ; export LS_COLORS
# Eza Color (list command)
EZA_COLORS=$EZA_COLORS:'di=38;5;214:ex=4;38;5;213:fi=1:ln=3;38;5;89:uR=38;5;102:im=38;5;107:vi=38;5;33:mu=38;5;208:lo=38;5;208:cr=38;5;247:do=38;5;243:co=38;5;247:'; export EZA_COLORS #38;5;213

fetch
powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

