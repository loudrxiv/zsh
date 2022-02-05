# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH Styles
CASE_SENSITIVE="true"
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13
COMPLETION_WAITING_DOTS="true"
plugins=(git rails textmate ruby lighthouse)
ZSH_THEME="powerlevel10k/powerlevel10k"

# exports
## export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ARCHFLAGS="-arch x86_64"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# sources
source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# aliases
alias vi="nvim"
alias rnote="flatpak run com.github.flxzt.rnote"
alias startmax="emacs --daemon &; sleep 5; emacsclient -c -a 'emacs'"
alias emax="emacsclient -c -a 'emacs'"
alias killmax="emacsclient -e '(kill-emacs)'"
alias ll="ls -a"
alias csb="ssh mae117@cluster.csb.pitt.edu"
alias dennis="ssh mae117@klaus.devbio.pitt.edu"
alias doomutils="~/.emacs.d/bin/doom upgrade; ~/.emacs.d/bin/doom sync; ~/.emacs.d/bin/doom purge; ~/.emacs.d/bin/doom doctor"

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
