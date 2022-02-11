# ENABLE POWERLEVEL10K INSTANT PROMPT.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH TO YOUR H-MY-ZSH INSTALLATION 
export ZSH="$HOME/.oh-my-zsh"

# THEMES & SETS
# set -o vi
ZSH_THEME="powerlevel10k/powerlevel10k"
COMPLETION_WAITING_DOTS="true"

# STANDARD PLUGINS CAN BE FOUND IN $ZSH/PLUGINS/
plugins=(git aliases colorize tmux gh)

source $ZSH/oh-my-zsh.sh

# USER CONFIGURATION

# FOR A FULL LIST OF ACTIVE ALIASES, RUN `ALIAS`.
alias rnote="flatpak run com.github.flxzt.rnote"
alias startmax="emacs --daemon &; sleep 5; emacsclient -c -a 'emacs'"
alias emax="emacsclient -c -a 'emacs'"
alias killmax="emacsclient -e '(kill-emacs)'"
alias ll="ls -a"
alias csb="ssh mae117@cluster.csb.pitt.edu"
alias dennis="ssh mae117@klaus.devbio.pitt.edu"
alias eup="~/.emacs.d/bin/doom upgrade; ~/.emacs.d/bin/doom sync; ~/.emacs.d/bin/doom purge; ~/.emacs.d/bin/doom doctor"
alias startr="sudo rstudio-server start"
alias stopr="sudo rstudio-server start"
alias up="sudo apt update && sudo apt upgrade -y"
alias saus="source .zshrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/moo/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/moo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/moo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/moo/miniconda3/bin:$PATH"
    fi  
fi
unset __conda_setup
# <<< conda initialize <<<
