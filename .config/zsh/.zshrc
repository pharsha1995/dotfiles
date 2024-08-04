# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# history
HISTSIZE=100000
SAVEHIST=20000
HISTFILE="$XDG_CACHE_HOME/zsh/history"
setopt hist_ignore_dups     # do not record an event that was just recorded again
setopt hist_ignore_all_dups # delete an old recorded event if a new event is a duplicate
setopt hist_ignore_space    # do not record an event starting with a space
setopt hist_save_no_dups    # do not write a duplicate event to the history file
setopt inc_append_history   # write to the history file immediately, not when the shell exits
setopt share_history        # share history between terminals

# theme
source $XDG_DATA_HOME/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# plugins
source $XDG_DATA_HOME/zsh/plugins/zsh-defer/zsh-defer.plugin.zsh
zsh-defer source $XDG_DATA_HOME/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
zsh-defer source $XDG_DATA_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
zsh-defer source $XDG_DATA_HOME/zsh/plugins/dotbare/dotbare.plugin.zsh

# dotbare
export DOTBARE_DIR="$HOME/.dotfiles"
export DOTBARE_TREE="$HOME"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# fzf
source <(fzf --zsh)
