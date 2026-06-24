if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
fi

if [[ -z "$TMUX" ]] && [[ -n "$PS1" ]]; then
  tmux attach -t main || tmux new -s main
fi

. "$HOME/.local/bin/env"

export PATH="/Applications/PyCharm.app/Contents/MacOS:$PATH"
export PATH="/Applications/WebStorm.app/Contents/MacOS:$PATH"

alias pycharm='open -na "PyCharm.app" --args'
alias webstorm='open -na "WebStorm.app" --args'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/atelier/.bun/_bun" ] && source "/Users/atelier/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pnpm
export PNPM_HOME="/Users/atelier/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
#
# Force blinking cursor
_fix_cursor() { echo -ne '\e[1 q' }
precmd_functions+=(_fix_cursor)
alias cryptid='/Users/atelier/Library/Application Support/Steam/steamapps/common/Balatro/run_lovely_macos.sh'

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
